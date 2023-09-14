@echo off

set TC=%USERPROFILE%\AppData\Local\Arduino15\packages\arduino\tools\arm-none-eabi-gcc\4.8.3-2014q1\bin
set CC=%TC%\arm-none-eabi-gcc
set PROG=%USERPROFILE%\.platformio\packages\tool-bossac

set CFLAGS=-mcpu=cortex-m3 -mthumb --specs=nosys.specs -nostdlib -g -Os

echo Compiling...
%cc% -c main.c -o main.o %CFLAGS%
%cc% -c startup.c -o startup.o %CFLAGS%

echo Linking...
%cc% startup.o main.o -o blink.elf -mcpu=cortex-m3 -mthumb --specs=nosys.specs -nostdlib "-Tflash.ld" "-Wl,-Map,blink.map" -nostartfiles

echo Creating bin file...
%TC%\arm-none-eabi-objcopy  -O binary  blink.elf blink.bin



echo Programming code...

%PROG%\bossac --info --debug --port "COM7" --write --verify --reset --erase -U false --boot "blink.bin"


if not /%1/ == /PROG/ goto skip1
%PROG%\bossac --port=COM5 -U true -i -u -e -w -b "blink.bin" -v -R

\AppData\Local\Arduino15\packages\arduino\tools\bossac\1.6.1-arduino
echo Touch port...
D:\Projects\Python\env3.11\Scripts\python.exe touchPort.py

echo Wait...
powershell -nop -c "& {sleep -m 400}"

:skip1