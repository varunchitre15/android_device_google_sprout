# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/micromax/sprout/sprout.mk)

LOCAL_PATH := device/micromax/sprout

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=4.4.4/KPW53/1379542:user/release-keys PRIVATE_BUILD_DESC="sprout-user 4.4.4 KPW53 1379542 release-keys"

PRODUCT_NAME := cm_sprout
PRODUCT_DEVICE :=Sprout
PRODUCT_BRAND := Micromax
PRODUCT_MANUFACTURER := Micromax
PRODUCT_MODEL := A1
