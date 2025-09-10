# Marlin Firmware for Ender 3 Max Neo 3D + Microswiss NG™ REVO Direct Drive Extruder

This version of the firmware has been compiled to work with the ***Creality Ender 3 Max Neo 3D Printer*** + ***Microswiss NG™ REVO Direct Drive Extruder***

## Installation Instructions
 1. Format <=16GB SD flash card **FAT32**
 2. Copy *Firmware.bin* to root directory
 3. Insert SD card into printer and power up
 4. After flash completes, power down and remove card
 5. Remove any remaining files from the SD card, copy *MS_NG_ESTEP400.gcode* to the card
 6. Power up printer
 7. Print *Swiss REVO Settings.gcode* to adjust print settings (required for new extruder)
 8. All done!

## Specific Customizations
```h
#define MOTHERBOARD BOARD_CREALITY_V4  // v4.2.2 version of the motherboard, came stock
#define BAUDRATE 115200

#define TEMP_SENSOR_0 5                //  Read from the new sensor type
#define TEMP_SENSOR_BED 1
#define HEATER_0_MAXTEMP 300
#define BED_MAXTEMP 125

#define X_BED_SIZE 300
#define Y_BED_SIZE 300
#define Z_MAX_POS 320
```

## Swiss REVO Settings.gcode ##
Print this file to set the new distances for the extruder (NG REVO is wider than the stock extruder). Please edit line M852 with the correct probe offsets as measured by calipers to your print nozzle. The example here is set to 40mm -> Left, 10mm -> In Front
```gcode
M92 E412.5    		; set E-steps to 412.5
M206 X40      		; shift the X origin left by d mm (e.g., M206 X-5)
M851 X-40 Y-10 Z0   ; set probe offsets
M500          		; save to EEPROM
M117 Saved!
G28           		; re-home
G1 X0 Y0      		; verify nozzle is at the left-front corner
```