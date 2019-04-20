$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/poplar/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_poplar
PRODUCT_DEVICE := poplar
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
<<<<<<< HEAD:lineage_poplar.mk
    PRODUCT_NAME=poplar
=======
    PRODUCT_NAME=lilac \
    PRIVATE_BUILD_DESC="lilac-user 9 YOSHINO-2.2.0-190326-1903 1 dev-keys"
>>>>>>> 3b4a706... lineage: Add build description from 47.2.A.10.45:lineage_lilac.mk

BUILD_FINGERPRINT := Sony/poplar/poplar:9/YOSHINO-2.2.0-190326-1903/1:user/dev-keys

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif

ifneq ($(LINEAGE_VERITY_CERTIFICATE),)
    PRODUCT_VERITY_SIGNING_KEY := $(LINEAGE_VERITY_CERTIFICATE)
endif
