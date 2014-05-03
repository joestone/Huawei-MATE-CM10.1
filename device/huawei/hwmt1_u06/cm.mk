## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# bootanimation target
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := MT1-U06

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hwmt1_u06/device_hwmt1_u06.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hwmt1_u06
PRODUCT_NAME := cm_hwmt1_u06
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := MT1-U06
PRODUCT_MANUFACTURER := HUAWEI

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT1-U06 BUILD_FINGERPRINT="Huawei/MT1-U06/hwmt1-u06:4.2.2/HuaweiMT1-U06/C17B120:user/ota-rel-keys,release-keys" PRIVATE_BUILD_DESC="P6-U06-user 4.2.2 HuaweiP6-U06 C17B120 ota-rel-keys,release-keys"
