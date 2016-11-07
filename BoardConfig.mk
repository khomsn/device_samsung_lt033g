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

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos5420

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_BLUEDROID_VENDOR_CONF := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := lt033g,lt03wifi,lt03wifiue

# Camera
BOARD_CAMERA_SNUMINTS := 34
BOARD_NEEDS_MEMORYHEAPION := true
COMMON_GLOBAL_CFLAGS += -DCAMERA_SNUMINTS=$(BOARD_CAMERA_SNUMINTS)

# Force the screenshot path to CPU consumer
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := cyanogenmod_lt033g_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/lt033g
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-5.2/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Charger/Healthd
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# Build the platform with Clang
USE_CLANG_PLATFORM_BUILD := true

# We use our lights hal
TARGET_PROVIDES_LIBLIGHT := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := universal5420

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V4L2 := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Mixer
BOARD_USE_BGRA_8888 := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Exynos display
BOARD_USES_VIRTUAL_DISPLAY := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# HDMI
BOARD_USES_GSC_VIDEO := true

# SCALER
BOARD_USES_SCALER := true
BOARD_USES_CEC := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# IR Blaster
IR_HAS_ONE_FREQ_RANGE := true

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/lt033g/cmhw

# Samsung LSI OpenMAX
COMMON_GLOBAL_CFLAGS += -DUSE_NATIVE_SEC_NV12TILED # use format from fw/native
COMMON_GLOBAL_CFLAGS += -DWIDEVINE_PLUGIN_PRE_NOTIFY_ERROR

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Modem
BOARD_MODEM_TYPE := xmm7260
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_NEEDS_VIDEO_CALL_FIELD := true
# RIL java overwrite
BOARD_RIL_CLASS := ../../../device/samsung/lt033g/ril

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#HAX: real block size is too small to build a ROM
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2524971008
# 12863930368 - 16384 <encryption footer>
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 12863913984
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Extended filesystem support
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

# Disable journaling on system.img to save space
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := true

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420

# SurfaceFlinger

# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"
BOARD_ANT_WIRELESS_POWER := "bluedroid"

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Advanced Low Power audio support
BOARD_USE_ALP_AUDIO := true

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
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# SELinux
BOARD_SEPOLICY_DIRS := \
    device/samsung/lt033g/sepolicy
