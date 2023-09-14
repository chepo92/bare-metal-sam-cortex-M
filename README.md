# bare-metal-sam3x
Bare bones projects for Microchip SAM3X8E (Arduino Due)

# Projects

## Requirements

- An Arduino Due
- USB cable
- Compiler tools: arm-none-eabi-gcc 4.8.3-2014q1, can be obtained from installation of Arduino IDE + SAM boards package, (or GNU-ARM compiler package)

Optional : make

## blink

Blinks the onboard LED (D13) on Arduino DUE. (Working for SAM3)
Blinks pin E2_Stop on the DUET

NB you will need to alter paths to suit your installation in build.bat/makefile
Also change the COM port for your system.

## Building
```
cd blink
./build.bat
```
### Win

## Uploading

You may need to erase the Due manually (press erase button, put jumper on erase pins on duet) to get it boot from SAM-BA bootloader.
Use the native USB for programming.

### Tools
- For Due (SAM3) you can use bossac, obtained from arduino IDE, platformio or use tools at https://github.com/chepo92/tool-bossac-py-reset
D:\Git\tool-bossac-py-reset\bossac\win\bossac.exe  -i -d --port=COM5 -U false -e -w  -b ".\blink.bin" -R
Note: It doesn't suppport Cortex M4 , only M3

- For any board Due, Duet, (SAM4), use bossac 1.9.1 from https://github.com/shumatech/BOSSA/releases
- SAM-BA v2.17 with GUI (windows) has also been tested

__NB__ There is a bug in older versions of bossac, it crashes on small bin files. You must use v1.7.0 or later which can be found at https://github.com/shumatech/BOSSA/releases

http://www.shumatech.com/web/products/bossa
