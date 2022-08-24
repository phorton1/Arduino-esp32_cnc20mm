; ToolSet.gcode
; ALL TOOLS MUST BE ABLE TO CLEAR THE PROBE AT SAFE_Z
;
; Starts at some position after manually setting workZ, probably
; like G54 x+10, y+10, z+10, and will return there when finished.
;
; Example:
;
; 	WorkZ is set at abs -42 with ToolA
; 	ToolA probes at abs -31.5
;   	giving a "probe height" of 10.5 below
; 	{safeZ}   = abs -5
; 	{probeX}  = abs 30
; 	{probeX}  = abs 30
;
;													Show				Store
;													Abs		Work		G54		G56		G57		G92
;						;Start						-32		10			-42		xxxx	xxxx	xxxx
G10 L20 P4 X0 Y0 Z0     ;Save Init Pos to G57		-32		10			-42		xxxx	-32		xxxx
G0 G53 Z-5				;Goto SafeZ      			-5		37			-42		xxxx	-32		xxxx
G0 G53 X30 Y30          ;Goto ProbeXY
G38.2 F100 Z-50			;Probe ToolA at -31.5		-31.5	10.5		-42		xxxx	-32		xxxx
G10 L20 P3 Z0			;Set G56					-31.5	10.5		-42		-31.5	-32		xxxx
G0 G53 Z-5				;Goto SafeZ      			-5		37			-42		-31.5	-32		xxxx
G0 G57 X0 Y0			;Return to starting X,Y
G0 G57 Z0				;Return to starting Z		-32		10			-42		-31.5	-32		xxxx
G54						;Make sure we are in G54


