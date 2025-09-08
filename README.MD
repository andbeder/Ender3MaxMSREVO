# Marlin Firmware for Ender 3 Max Neo 3D + Microswiss NG™ REVO Direct Drive Extruder

This version of the firmware has been compiled to work with the ***Creality Ender 3 Max Neo 3D Printer*** + ***Microswiss NG™ REVO Direct Drive Extruder***

## Installation Instructions
 1. Format <=16GB SM flash card **FAT32**
 2. Copy *Firmware.bin* to root directory
 3. Insert SM card into printer and power up
 4. After flash completes, power down and remove card
 5. Remove any remaining files from the SM card, copy *MS_NG_ESTEP400.gcode* to the card
 6. Power up printer
 7. Print *MS_NG_ESTEP400.gcode* to set the ESteps to 400 (required for new extruder)
 8. All done!

## Specific Customizations
```h
#define MOTHERBOARD BOARD_CREALITY_V4
#define BAUDRATE 115200

#define TEMP_SENSOR_0 5
#define TEMP_SENSOR_BED 1
#define HEATER_0_MAXTEMP 300
#define BED_MAXTEMP 125

#define X_BED_SIZE 300
#define Y_BED_SIZE 300
#define Z_MAX_POS 320

// Ensure ABL options like BLTOUCH and AUTO_BED_LEVELING_* are commented out
```