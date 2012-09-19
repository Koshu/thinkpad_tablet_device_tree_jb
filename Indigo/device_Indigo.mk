$(call inherit-product, device/LENOVO/Indigo/proprietary/copy.mk)
$(call inherit-product, device/LENOVO/Indigo/configfiles/copy.mk)
$(call inherit-product, device/LENOVO/Indigo/ramdisk/copy.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    3g.module = f5521gw

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sf.lcd_density=160

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

include frameworks/native/build/tablet-dalvik-heap.mk

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 

PRODUCT_PACKAGES := \
    make_ext4fs \
    l2ping \
    hcitool \
    bttest 

PRODUCT_CHARACTERISTICS := tablet

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# media mount paths / permissions
PRODUCT_COPY_FILES += \
    device/asus/tf101/patches/platform.xml:system/etc/permissions/platform.xml

$(call inherit-product-if-exists, device/LENOVO/gapps/configfiles/copy.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_DEVICE := Indigo
PRODUCT_NAME := cm_Indigo
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := ThinkPadTablet
PRODUCT_MANUFACTURER := LENOVO
