## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, build/target/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/LENOVO/IndigoF/overlay

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/LENOVO/Indigo/device_Indigo.mk)

# Inherit 3G
$(call inherit-product, device/LENOVO/IndigoF/device_IndigoF.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := IndigoF
PRODUCT_NAME := cm_IndigoF
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := ThinkPadTablet
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ThinkPadTablet BUILD_FINGERPRINT=Lenovo/ThinkPadTablet/Indigo:4.0.3/ThinkPadTablet_A400_03/0069_0130_WE:user/release-keys PRIVATE_BUILD_DESC="ventana-user 4.0.3 ThinkPadTablet_A400_03 0069_0130_WE release-keys"

# Release name
PRODUCT_RELEASE_NAME := IndigoF
