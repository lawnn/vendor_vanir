#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-l01f

# Inherit device configuration
$(call inherit-product, device/lge/l01f/l01f.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/vanir_g2-common.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l01f
PRODUCT_NAME := vanir_l01f
PRODUCT_BRAND := DOCOMO
PRODUCT_MODEL := L01F
PRODUCT_MANUFACTURER := lge
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_dcm_jp/g2:4.2.2/JDQ39B/L01F10c.1378316352:user/release-keys PRIVATE_BUILD_DESC="g2_dcm_jp-user 4.2.2 JDQ39B L01F10c.1378316352 release-keys"
