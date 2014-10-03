# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/micromax/sprout/full_sprout.mk)

PRODUCT_NAME := cm_sprout
PRODUCT_DEVICE :=sprout
PRODUCT_BRAND := Micromax
PRODUCT_MANUFACTURER := Micromax
PRODUCT_MODEL := A1