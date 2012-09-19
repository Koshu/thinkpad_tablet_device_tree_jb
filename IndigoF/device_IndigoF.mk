$(call inherit-product, device/LENOVO/IndigoF/proprietary/copy.mk)
$(call inherit-product, device/LENOVO/IndigoF/configfiles/copy.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/IndigoF/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    3g.module = f5521gw

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_DEVICE := IndigoF
PRODUCT_NAME := cm_IndigoF
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := ThinkPadTablet
PRODUCT_MANUFACTURER := LENOVO
