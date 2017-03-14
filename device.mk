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

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi

PRODUCT_PACKAGES += \
    gralloc.exynos5 \
    libfimg

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.opengles.version=196609 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    lockscreen.rot_override=true

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_PACKAGES += \
    bootanimation.zip

# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal5420 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    ro.config.media_vol_steps=30 \
    ro.config.vc_call_vol_steps=20 \
    audio_hal.force_voice_config=wide \
    audio_hal.disable_two_mic=true

# Camera
PRODUCT_PACKAGES += \
    camera.universal5420 \
    libhwjpeg

# Themes
PRODUCT_PACKAGES += \
    HexoLibre

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Gello
PRODUCT_PACKAGES += \
    Gello

# SHIM LIBS
PRODUCT_PACKAGES += \
    libdmitry

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_e-pen.kl:system/usr/keylayout/sec_e-pen.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Utilities
PRODUCT_PACKAGES += \
    remount \
    optimizedb

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5420

# Lights
PRODUCT_PACKAGES += \
    lights.universal5420

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore setup
PRODUCT_PACKAGES += \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov

# Network tools
PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# Video codecs
PRODUCT_PACKAGES += \
    libOMX.Exynos.WMV.Decoder \
    libOMX.Exynos.MPEG2.Decoder

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Power
PRODUCT_PACKAGES += \
    power.universal5420

# Init
PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.samsung.rc \
    init.universal5420.rc \
    init.universal5420.usb.rc \
    init.universal5420.wifi.rc \
    ueventd.universal5420.rc \
    init.baseband.rc

# Radio
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    modemloader \
    libxml2 \
    libprotobuf-cpp-full

PRODUCT_PACKAGES += \
    SamsungServiceMode

# Misc libraries
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full \
    libstlport

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    macloader \
    wifiloader

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images

# Radio
ADDITIONAL_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.default_network=0 \
    rild.libpath=/system/lib/libsec-ril.so \
    ro.data.large_tcp_window_size=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10

ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mtp \
    ro.debug_level=0x4948

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.adb.notify=0 \
    ro.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# root for adb and apps
ADDITIONAL_BUILD_PROPERTIES += \
    persist.sys.root_access=3

# limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4

# Dex2oat optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false

# Enable mock location
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.allow.mock.location=1

# Enable multi-window by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Hwc - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.winupdate=1 \
    debug.hwc.otf=1

# Adaptive backlight
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc

# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Fixes game grashing (HeartStone)
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.force_msaa=true

# Enable SDCard fs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcardfs.enable=true

# Call Prebuilding Apps packages
$(call inherit-product, vendor/samsung/prebuilding_apps/prebuilding_apps.mk)
# Call Samsung LSI board support packages
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5420/exynos5420.mk)
# Call the proprietary setup
$(call inherit-product, vendor/samsung/lt033g/lt033g-vendor.mk)
# call dalvik heap and hwui config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
