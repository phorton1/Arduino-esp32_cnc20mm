; ToolChangeB

; [ESP700]/ToolChangeB.gcode
; $localFS/Run=/ToolChangeB.gcode

; need g0 before G53


g0 G53 X30 Y30				; move over the probe
G38.2 F100 Z-50				; probe new tool
G92 Z0						; set new G92
G54							; change to G54 coordinates
g0 G53 Z-20					; goto safe height
G0 X0 Y0                    ; move to work X0,Y0
G0 Z20						; go to known safe relative Z
G92.1						; cancel G92
G10 L20 P1 Z20				; set new (relative) workZ
