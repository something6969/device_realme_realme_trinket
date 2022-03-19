# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from realme_trinket device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := realme_trinket
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_realme_trinket
PRODUCT_MODEL := Realme Trinket Series

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := realme_trinket
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX1911/RMX1911:10/QKQ1.200209.002/1608537052:user/release-keys
