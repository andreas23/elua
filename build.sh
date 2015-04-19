#!/bin/sh

./build_elua.lua board=MBED target=lualong prog
boot_link1
crt_emu_cm3_nxp -flash-load-exec elua_lualong_mbed.bin -wire=winusb -vendor=NXP -pLPC1769

