; ToolChg.gcode
;
; This code is used after a tool change and also after a reboot
; to reset the tool height that might have changed with new Z homing.
;
; ALL TOOLS MUST BE ABLE TO CLEAR THE PROBE AT SAFE_Z
; IT MUST BE SAFE TO BE 10MM ABOVE THE WORK PIECE AT G54 X0,Y0
; 	In other words, there must be at least 10 mm of travel above the
;	work piece without hitting the Z-Zero stop switch!
;
; The process will return to X0,Y0,Z10 at the end.

; SafeZ *should* also be "ChangeZ", with redesigned dust boot.
;
; Example
;
; 	WorkZ is set at abs -42 with ToolA
; 	ToolA previously probed at abs -31.5 which is saved in G56,
;   	giving a "probe height" of 10.5
; 	ToolB probes at abs -32.7 (is 1.2mm shorter), so it now gives
;       a probe height of 9.3 in below
;   {initZ}   = where we finished the manual change, starts at abs -13 in example
; 	{safeZ}   = abs -5
; 	{probeX}  = abs 30
; 	{probeX}  = abs 30
;   {resetZ}  = rel 10
;
; The main problems with this approach are that (a) you need a known location in the end in order
; to set the new G54 workZ AND (b) you can only modify ONE coordinate system this way (since,
; in FluidNC you cannot "re-instate" the G92 once you have cleared.
;
; Therefore for (a) we do it OVER THE WORK PIECE and there must be at least 5mm of travel above the work piece,
; for (b) sheesh there must be a range where the head can move from the old tool height to the new tool height,
; and/or we must make other assumptions like that the probe is ABOVE the work surface.

;													Show				Store
;													Abs		Work		G54		G56		G57		G92
;						;Start						-13		29			-42		-31.5
G0 G53 Z-5				;Goto SafeZ      			-5		37			-42		-31.5
G0 G53 X30 Y30          ;Goto ProbeXY
G56						;Change to G56 coords       -5      26.5		-42		-31.5
G38.2 F100 Z-50			;Probe ToolB				-32.7	-1.2		-42		-31.5
G10 L20 P4 Z0			;Save Probe in G57			-32.7	-1.2		-42		-31.5	-32.7
G92 Z0					;Set  G92					-32.7	0			-42		-31.5	-32.7  -1.2

	; I would like to save the probe immediatly into G56 here but cannot because we need that does not work because we need
	; the G92 offset in place when we reset the G54 coords and you cannot set something and keep the
	; offset.
	;
	; In addition, we have to move off the probe and over the work piece to guarantee that we can
	; safely go to G54 z10 because we have to move to a known location

G54						;Change to G54 coords		-32.7	9.3			-42		-31.5	-32.7  -1.2   <-- with G92 in effect
G0 G53 Z-5				;Goto SafeZ					-5      38.0
G0 X0 Y0				;Move over the work piece
G0 Z10					;Goto 10mm over work piece  -33.0	10			-42		-31.5	-32.7  -1.2
G92.1					;cancel G92					-33.0	11.2		-42		-31.5	-32.7  0
G10 L20 P1 Z10			;set new (relative) workZ	-33.0	10			-43.2	-31.5	-32.7  0

	; now we have lost the ability to move the 32.7 into G56, except by going to that coordinate system and
	; doing offset tricks. We use use 5mm above the probe which now also must be safe and above the work.

G56						;Change to G56 coords 		-33.0	-1.5		-43.2	-31.5	-32.7  0
G0 G57 Z5				;Move to G57 z5             -27.7   3.8         -43.2	-31.5	-32.7  0
G10 L20 P3 Z5			;Save G57 to G56			-27.7	5			-43.2	-32.7	-32.7  0

	; finally switch back to G54 and 10mm above work

G54						;Change to G54 coords		-27.7	15.5		-43.2	-32.7	-32.7  0
G0 Z10					;Goto 10mm over work piece  -33.2	10			-43.2	-32.7	-32.7  0
