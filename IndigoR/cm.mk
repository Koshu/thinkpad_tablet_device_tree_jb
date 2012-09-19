## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := IndigoR

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/LENOVO/Indigo/device_Indigo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := IndigoR
PRODUCT_NAME := cm_IndigoR
PRODUCT_BRAND := LENOVO
PRODUCT_MODEL := IndigoR
PRODUCT_MANUFACTURER := LENOVO
