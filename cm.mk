## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := wx_na_wf

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nvidia/wx_na_wf/device_wx_na_wf.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wx_na_wf \
    TARGET_DEVICE=shieldtablet \
    BUILD_FINGERPRINT="nvidia/wx_na_wf/shieldtablet:5.0.1/LRX22C/29082_493.9700:user/release-keys" \
    PRIVATE_BUILD_DESC="wx_na_wf-user 5.0.1 LRX22C 29082_493.9700 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wx_na_wf
PRODUCT_NAME := cm_wx_na_wf
PRODUCT_BRAND := nvidia
PRODUCT_MANUFACTURER := NVIDIA
PRODUCT_MODEL := SHIELD Tablet
