# Bare Metal SAM
Bare bones blink project for Microchip SAM3X8E (Arduino Due) and SAM4E8E (Duet Printer Controller, SAM4E XPRO and so)

Blinks the onboard LED (D13). Working.

## Requirements

- A compatible board, eg. Arduino Due, Duet controller 
- USB cable
- GNU-ARM compiler package, it can be obtained by installation of Arduino IDE + SAM boards package

Optional : make


## Building

You will need to alter paths to suit your installation in build.bat/makefile
Also change the COM port for your system.

```
cd blink
./build.bat
```
### Win

## Uploading

You may need to erase the board manually (press erase button) to get it boot from SAM-BA bootloader.
Use the native USB for programming.

D:\Git\tool-bossac-py-reset\bossac\win\bossac.exe  -i -d --port=COM5 -U false -e -w  -b ".\blink.bin" -R


Note: There is a bug in older versions of bossac, it crashes on small bin files. You must use v1.7.0 or later which can be found at https://github.com/shumatech/BOSSA/releases
