# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from evert device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := evert
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_evert
PRODUCT_MODEL := moto g(6) plus

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := evert
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 9 PPWS29.116-16-18 7f66b release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 9/PPWS29.116-16-18/7f66b:user/release-keys
