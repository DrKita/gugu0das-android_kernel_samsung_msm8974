#!/bin/bash

# Clean Build Files
make mrproper
rm -r -f output/
rm -f gugu0das/Touchwiz/ramdisk.cpio.gz
rm -f gugu0das/Touchwiz/boot_kltekor.img
rm -f gugu0das/Touchwiz/boot_klteeur.img
rm -f gugu0das/gugu0das_kernel-TW-M-kltekor-Release-2/boot.img
rm -f gugu0das_kernel-TW-M-kltekor-Release-2.zip
rm -f gugu0das/gugu0das_kernel-TW-M-klteeur-Release-2/boot.img
rm -f gugu0das_kernel-TW-M-klteeur-Release-2.zip
