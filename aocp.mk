
# Release name
PRODUCT_RELEASE_NAME := SPH-D710

#OTA
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/common/app/hdpi/AoCPOTA.apk:system/app/AoCPOTA.apk

#bootanimation
PRODUCT_COPY_FILES += \
        vendor/aocp/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip

# Inherit some common aocp stuff.
$(call inherit-product, vendor/aocp/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/d710/full_d710.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d710
PRODUCT_NAME := aocp_d710
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-D710 

#Set build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.0.4/IMM76I/FH23:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.0.4 IMM76I FH23 release-keys"
