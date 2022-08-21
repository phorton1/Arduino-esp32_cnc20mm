; ToolChangeA

; [ESP700]/ToolChangeA.gcode
; $localFS/Run=/ToolChangeA.gcode

; need g0 before G53

G92.1                       ; cancel any existing G92
g0 G53 Z-20					; goto safe height
G53 X30 Y30					; move over the probe
G38.2 F100 Z-50				; probe existing tool
G10 L20 P3 Z0				; set G56 coordinate
G56							; change to G56 coordinates
G92 Z0						; set G92
g0 G53 Z-20					; goto change height
G53 X70 Y70					; move to change position
