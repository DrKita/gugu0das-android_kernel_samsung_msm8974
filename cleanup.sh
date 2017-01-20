#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_klteskt.img
rm -f gugu0das/Touchwiz/boot_klteeur.img
rm -f gugu0das/gugu0das_kernel-NX_TW-M-klteskt-Release-1/boot.img
rm -f gugu0das_kernel-NX_TW-M-klteskt-Release-1.zip
rm -f gugu0das/gugu0das_kernel-NX_TW-M-klteeur-Release-1/boot.img
rm -f gugu0das_kernel-NX_TW-M-klteeur-Release-1.zip
