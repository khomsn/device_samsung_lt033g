# Inherit from lt033g device
$(call inherit-product, device/samsung/lt033g/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pac_lt033g
PRODUCT_DEVICE := lt033g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-P601

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lt033g
