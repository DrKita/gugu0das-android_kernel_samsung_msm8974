#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Cyanogenmod_13.0/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_13.0/boot.img
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot.img
rm -f gugu0das/gugu0das_kernel-NX_CM-13.0-jactivelteskt-Release-1/boot.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-jactivelteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_CM-13.0-jactivelteskt-Release-1.zip
rm -f gugu0das_kernel-NX_TW-M-jactivelteskt-Release-1.zip
