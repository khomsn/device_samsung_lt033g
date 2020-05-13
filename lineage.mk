# Inherit from lt033g device
$(call inherit-product, device/samsung/lt033g/device.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

## Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_lt033g
PRODUCT_DEVICE := lt033g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P601 \
    PRODUCT_NAME=lt033gxx \
    PRODUCT_DEVICE=lt033g \
    TARGET_DEVICE=lt033g \
    PRIVATE_BUILD_DESC="lt033gxx-user 5.1.1 LMY47X P601XXUDQA1 release-keys"

BUILD_FINGERPRINT := "samsung/lt033gxx/lt033g:5.1.1/LMY47X/P601XXUDQA1:user/release-keys"
