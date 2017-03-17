#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Cyanogenmod_14.1/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_14.1/boot_hltekor.img
rm -f gugu0das/Cyanogenmod_14.1/boot_hlteeur.img
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hltekor-Release-2-BetaProgram_2017.03.18/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hltekor-Release-2-BetaProgram_2017.03.18.zip
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hlteeur-Release-2-BetaProgram_2017.03.18/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hlteeur-Release-2-BetaProgram_2017.03.18.zip
