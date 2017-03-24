#!/bin/bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
kernel_dir=$(pwd)
dir=$(pwd)/gugu0das

#
# Touchwiz Kernel
#

# Create ramdisk.cpio.gz
cd $dir/Touchwiz/ramdisk
find | cpio -o -H newc | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# Touchwiz kltekor Value
echo "Generating Touchwiz kltekor Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_kltekor" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt_kltekor.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_kltekor.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_kltekor.img;

cd $dir

# Touchwiz klteeur Value
echo "Generating Touchwiz klteeur Boot Image"
./mkbootimg --kernel "$dir/Touchwiz/kernel_klteeur" \
--ramdisk "$dir/Touchwiz/ramdisk.cpio.gz" \
--dt "$dir/Touchwiz/dt_klteeur.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Touchwiz/boot_klteeur.img
cd $dir/Touchwiz
echo -n "SEANDROIDENFORCE" >> boot_klteeur.img;

# Move Kernel
echo "Generating gugu0das Kernel Flashing File"
cd $dir
mv Touchwiz/boot_kltekor.img gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24/boot.img
mv Touchwiz/boot_klteeur.img gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24/boot.img

# Compression
cd $dir/gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24
zip -r gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24.zip ./*
cd $dir/gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24
zip -r gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24.zip ./*

# Move Kernel Flashing File
cd $dir/gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24
mv gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24.zip $kernel_dir/gugu0das_kernel-NX_TW-M-kltekor-Release-2-BetaProgram_2017.03.24.zip
cd $dir/gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24
mv gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24.zip $kernel_dir/gugu0das_kernel-NX_TW-M-klteeur-Release-2-BetaProgram_2017.03.24.zip
