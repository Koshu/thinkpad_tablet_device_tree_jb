$(call inherit-product, device/LENOVO/IndigoG/proprietary/copy.mk)
$(call inherit-product, device/LENOVO/IndigoG/configfiles/copy.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/IndigoG/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    3g.module = gobi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_DEVICE := IndigoG
PRODUCT_NAME := cm_IndigoG
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := ThinkPadTablet
PRODUCT_MANUFACTURER := LENOVO
