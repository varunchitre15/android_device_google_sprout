# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/micromax/sprout

PRODUCT_NAME := cm_sprout
PRODUCT_DEVICE :=Sprout
PRODUCT_BRAND := Micromax
PRODUCT_MANUFACTURER := Micromax
PRODUCT_MODEL := A1

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab