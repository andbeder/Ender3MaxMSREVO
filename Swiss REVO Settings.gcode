M92 E412.5    		; set E-steps to 412.5
M206 X40      		; shift the X origin left by d mm (e.g., M206 X-5)
M851 X-40 Y-10 Z0   ; set probe offsets
M500          		; save to EEPROM
M117 Saved!
G28           		; re-home
G1 X0 Y0      		; verify nozzle is at the left-front corner
