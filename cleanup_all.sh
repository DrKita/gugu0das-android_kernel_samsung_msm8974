#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -r -f armeb-linux-gnueabihf-linaro_6.2.1-2016.11/
rm -r -f arm-eabi-ubertc_7.0-2016.04/
rm -f gugu0das/Cyanogenmod_13.0/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_13.0/boot_hlteskt.img
rm -f gugu0das/Cyanogenmod_13.0/kernel_hlteskt
rm -f gugu0das/Cyanogenmod_13.0/boot_hlteeur.img
rm -f gugu0das/Cyanogenmod_13.0/kernel_hlteeur
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_hlteskt.img
rm -f gugu0das/Touchwiz/kernel_hlteskt
rm -f gugu0das/Touchwiz/boot_hlteeur.img
rm -f gugu0das/Touchwiz/kernel_hlteeur
rm -f gugu0das/gugu0das_kernel-NX_CM-13.0-hlteskt-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-hlteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_CM-13.0-hlteskt-Release-1.zip
rm -f gugu0das_kernel-NX_TW-M-hlteskt-Release-1.zip
rm -f gugu0das/gugu0das_kernel-NX_CM-13.0-hlteeur-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-hlteeur-Release-1/boot.img
rm -f gugu0das_kernel-NX_CM-13.0-hlteeur-Release-1.zip
rm -f gugu0das_kernel-NX_TW-M-hlteeur-Release-1.zip
