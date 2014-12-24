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
    TARGET_DEVICE=shieldtablet
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="nvidia/wx_na_wf/shieldtablet:4.4.2/KOT49H/22229_440.9583:user/release-keys" \
#    PRIVATE_BUILD_DESC="wx_na_wf-user 4.4.2 KOT49H 22229_440.9583 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wx_na_wf
PRODUCT_NAME := cm_wx_na_wf
PRODUCT_BRAND := nvidia
PRODUCT_MANUFACTURER := NVIDIA
PRODUCT_MODEL := SHIELD Tablet
