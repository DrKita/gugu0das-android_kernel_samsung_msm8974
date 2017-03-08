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
# Cyanogenmod_13.0/LineageOS_13.0 Kernel
#

# Create ramdisk.cpio.gz
cd $dir/Cyanogenmod_13.0/ramdisk
find | cpio -o -H newc | gzip -9 > ramdisk.cpio.gz
mv ramdisk.cpio.gz ../ramdisk.cpio.gz
cd $dir

# Cyanogenmod_13.0/LineageOS_13.0 Value
echo "Generating Cyanogenmod_13.0 Boot Image"
./mkbootimg --kernel "$dir/Cyanogenmod_13.0/kernel" \
--ramdisk "$dir/Cyanogenmod_13.0/ramdisk.cpio.gz" \
--dt "$dir/Cyanogenmod_13.0/dt.img" \
--cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive" \
--base 0x00000000 \
--pagesize 2048 \
--ramdisk_offset 0x02000000 \
--tags_offset 0x01e00000 \
--output $dir/Cyanogenmod_13.0/boot.img
cd $dir/Cyanogenmod_13.0
echo -n "SEANDROIDENFORCE" >> boot.img;

# Move Kernel
echo "Generating gugu0das Kernel Flashing File"
cd $dir
mv Cyanogenmod_13.0/boot.img gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08/boot.img

# Compression
cd $dir/gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08
zip -r gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08.zip ./*

# Move Kernel Flashing File
cd $dir/gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08
mv gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08.zip $kernel_dir/gugu0das_kernel-NX_CM-13.0-ks01ltekor-Release-2-BetaProgram_2017.03.08.zip


