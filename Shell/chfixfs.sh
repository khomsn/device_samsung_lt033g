#!/sbin/sh
#EFS
e2fsck -fy /dev/block/mmcblk0p3
#BOOT
e2fsck -fy /dev/block/mmcblk0p9
#RECOVERY
#e2fsck -fy /dev/block/mmcblk0p10
#OTA
e2fsck -fy /dev/block/mmcblk0p11
#RADIO
e2fsck -fy /dev/block/mmcblk0p13
#HIDDEN
e2fsck -fy /dev/block/mmcblk0p16
#PERSDATA
e2fsck -fy /dev/block/mmcblk0p17
#CACHE
e2fsck -fy /dev/block/mmcblk0p19
fsck.f2fs -a /dev/block/mmcblk0p19
##SYSTEM
e2fsck -fy /dev/block/mmcblk0p20
#USERDATA
e2fsck -fy /dev/block/mmcblk0p21
fsck.f2fs -a /dev/block/mmcblk0p21
