$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/LENOVO/IndigoR

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/LENOVO/IndigoR/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/ramdisk/init:root/init \
    $(LOCAL_PATH)/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/ramdisk/init.indigo.usb.rc:root/init.indigo.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.ventana.rc:root/init.ventana.rc 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_IndigoR
PRODUCT_DEVICE := Indigo
PRODUCT_BRAND := LENOVO
PRODUCT_MODEL := Indigo
PRODUCT_MANUFACTURER := LENOVO
