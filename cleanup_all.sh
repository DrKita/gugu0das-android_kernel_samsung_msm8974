#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -r -f armeb-linux-gnueabihf-linaro_6.2.1-2016.11/
rm -r -f arm-eabi-ubertc_7.0-2016.04/
rm -f gugu0das/Cyanogenmod_14.1/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_14.1/boot_hltekor.img
rm -f gugu0das/Cyanogenmod_14.1/kernel_hltekor
rm -f gugu0das/Cyanogenmod_14.1/boot_hlteeur.img
rm -f gugu0das/Cyanogenmod_14.1/kernel_hlteeur
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hltekor-Release-2-BetaProgram_2017.03.18/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hltekor-Release-2-BetaProgram_2017.03.18.zip
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hlteeur-Release-2-BetaProgram_2017.03.18/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hlteeur-Release-2-BetaProgram_2017.03.18.zip
