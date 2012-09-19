## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

## Specify phone tech before including full_phone
$(call inherit-product, build/target/product/telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/IndigoG/overlay

# Inherit device configuration
$(call inherit-product, device/LENOVO/Indigo/device_Indigo.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit 3G
$(call inherit-product, device/LENOVO/IndigoG/device_IndigoG.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Indigo
PRODUCT_NAME := cm_IndigoG
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := ThinkPadTablet
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ThinkPadTablet BUILD_FINGERPRINT=Lenovo/ThinkPadTablet/Indigo:4.0.3/ThinkPadTablet_A400_03/0069_0130_WE:user/release-keys PRIVATE_BUILD_DESC="ventana-user 4.0.3 ThinkPadTablet_A400_03 0069_0130_WE release-keys"

# Release name
PRODUCT_RELEASE_NAME := IndigoG
