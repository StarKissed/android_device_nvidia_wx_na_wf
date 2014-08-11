$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/nvidia/wx_na_wf

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/nvidia/wx_na_wf/wx_na_wf-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nvidia/wx_na_wf/overlay

LOCAL_PATH := device/nvidia/wx_na_wf
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.ardbeg.rc:recovery/root/init.recovery.ardbeg.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/ueventd.ardbeg.rc:recovery/root/ueventd.ardbeg.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_wx_na_wf
PRODUCT_DEVICE := wx_na_wf
