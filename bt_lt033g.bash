#!/bin/bash
export LC_ALL=C 

export TEMP=/home/Share/tmp

export USE_CCACHE=1

export CCACHE_DIR=/home/Share/CCACHE

export ALLOW_MISSING_DEPENDENCIES=true

prebuilts/misc/linux-x86/ccache/ccache -M 50G

export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

# Enable SU
export WITH_SU=true

source build/envsetup.sh

breakfast lt033g

#rm -r ./out/target/product/lt033g
mkdir -p ./out/target/product/lt033g/system/bin

CWD="$(pwd)"

cd out/target/product/lt033g/system/bin
 ln -sf dhcpcd-6.8.2 dhcpcd
cd $CWD

croot

brunch lt033g > built_lt033g_log

pkill java

rm -r ~/Development/Lineage/out/target/product/lt033g/obj/PACKAGING
rm -r ~/Development/Lineage/out/target/product/lt033g/obj/KERNEL_OBJ

#shutdown -h now

