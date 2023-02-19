$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)
PRODUCT_COPY_FILES += device/samsung/m51/prebuilt/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m51
PRODUCT_NAME := omni_m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := m51
PRODUCT_MANUFACTURER := samsung

# Forcefully add mtp support (adb is already there)
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m51nsxx-user 11 RP1A.200720.012 M515FXXS4DWA3 release-keys"

BUILD_FINGERPRINT := samsung/m51nsxx/m51:11/RP1A.200720.012/M515FXXS4DWA3:user/release-keys
