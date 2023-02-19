$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/omni/config/common.mk)
PRODUCT_COPY_FILES += device/samsung/m51/prebuilt/kernel:kernel


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m51
PRODUCT_NAME := omni_m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := m51
PRODUCT_MANUFACTURER := samsung

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

BUILD_FINGERPRINT := "samsung/m51nsxx/m51:12/SP1A.210812.016/M515FXXU1BTK4:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=m51 \
    PRODUCT_NAME=m51 \
    PRIVATE_BUILD_DESC="m51nsxx-user 12 SP1A.210812.016 M515FXXU1BTK4 release-keys"
