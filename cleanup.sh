#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Cyanogenmod_14.1/ramdisk.cpio.gz
rm -f gugu0das/Cyanogenmod_14.1/boot_hlteskt.img
rm -f gugu0das/Cyanogenmod_14.1/boot_hlteeur.img
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hlteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hlteskt-Release-1.zip
rm -f gugu0das/gugu0das_kernel-NX_CM-14.1-hlteeur-Release-1/boot.img
rm -f gugu0das_kernel-NX_CM-14.1-hlteeur-Release-1.zip
