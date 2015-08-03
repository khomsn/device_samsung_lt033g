#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/lt033g

# inherit from the proprietary version
-include vendor/samsung/lt033g/BoardConfigVendor.mk

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := insignal
TARGET_SOC := exynos5420

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a15
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bionic Tuning
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := lt033g,lt03wifi,lt03wifiue

# Camera
BOARD_NEEDS_MEMORYHEAPION := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_DVFS

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_lt033g_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/lt033g

# Charger/Healthd
BOARD_CHARGER_ENABLE_SUSPEND := true
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal5420
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_NEON_BLITANTIH := true
BOARD_USES_FIMGAPI_V4L2 := false

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
OVERRIDE_RS_DRIVER := libRSDriverArm.so
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 5

# HWCServices
BOARD_USES_HWC_SERVICES := true

# Media
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED # use format from fw/native
COMMON_GLOBAL_CFLAGS += -DWIDEVINE_PLUGIN_PRE_NOTIFY_ERROR

# HDMI
BOARD_USES_GSC_VIDEO := true
BOARD_USES_CEC := true

# GSC
BOARD_USES_ONLY_GSC0_GSC1 := true

# SCALER
BOARD_USES_SCALER := true

# Keymaster
BOARD_USES_TRUST_KEYMASTER := false

# Samsung LSI OpenMAX
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/lt033g/cmhw

# Init
TARGET_NR_SVC_SUPP_GIDS := 20

# OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_VP8ENC_SUPPORT := true

# Samsung Gralloc
TARGET_SAMSUNG_GRALLOC_EXTERNAL_USECASES := true

# Audio
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# SurfaceFlinger
BOARD_USES_SYNC_MODE_FOR_MEDIA := true

# Modem
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
BOARD_RIL_CLASS := ../../../device/samsung/lt033g/ril
# we need define it (because audio.primary.universal5420.so requires it)
COMMON_GLOBAL_CFLAGS += -DSEC_PRODUCT_FEATURE_RIL_CALL_DUALMODE_CDMAGSM

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#HAX: real block size is too small to build a ROM
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2524971008
# 12863930368 - 16384 <encryption footer>
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12863913984
BOARD_FLASH_BLOCK_SIZE := 4096

# Disable journaling on system.img to save space
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# PowerHAL
TARGET_POWERHAL_VARIANT := universal5420

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := true

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/lt033g/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    domain.te \
    drmserver.te \
    file.te \
    gpsd.te \
    macloader.te \
    mediaserver.te \
    service_contexts \
    servicemanager.te \
    system_app.te \
    system_server.te \
    wpa.te \
    rild.te \
    vold.te

# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
