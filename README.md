# bare-metal-sam3x
Bare bones projects for Microchip SAM3X8E (Arduino Due)

# Projects

## Requirements

- An Arduino Due
- USB cable
- installation of Arduino IDE + SAM boards package (or GNU-ARM compiler package)

Optional : make

## blink

Blinks the onboard LED (D13). Working.

NB you will need to alter paths to suit your installation in build.bat/makefile
Also change the COM port for your system.

## Building
```
cd blink
./build.bat
```
### Win

## Uploading

You may need to erase the Due manually (press erase button) to get it boot from SAM-BA bootloader.
Use the native USB for programming.

D:\Git\tool-bossac-py-reset\bossac\win\bossac.exe  -i -d --port=COM5 -U false -e -w  -b ".\blink.bin" -R


__NB__ There is a bug in older versions of bossac, it crashes on small bin files. You must use v1.7.0 or later which can be found at https://github.com/shumatech/BOSSA/releases
