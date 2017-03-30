# Inherit from lt033g device
$(call inherit-product, device/samsung/lt033g/device.mk)

# Inherit from those products
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Inherit more AICP stuff.
$(call inherit-product, vendor/aicp/configs/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aicp_lt033g
PRODUCT_DEVICE := lt033g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-P601
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lt033gub \
    TARGET_DEVICE=lt033g \
    BUILD_FINGERPRINT="samsung/lt033gub/lt033g:5.1.1/LMY47X/P601UBSDQA1:user/release-keys" \
    PRIVATE_BUILD_DESC="lt033gub-user 5.1.1 LMY47X P601UBSDQA1 release-keys"
