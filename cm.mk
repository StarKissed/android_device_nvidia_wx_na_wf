## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := wx_na_wf

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nvidia/wx_na_wf/device_wx_na_wf.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wx_na_wf
PRODUCT_NAME := cm_wx_na_wf
PRODUCT_BRAND := nvidia
PRODUCT_MODEL := wx_na_wf
PRODUCT_MANUFACTURER := nvidia
