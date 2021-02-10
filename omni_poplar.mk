#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit AOSP configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_poplar
PRODUCT_DEVICE := poplar
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8341
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=poplar \
    PRIVATE_BUILD_DESC="G8341-user 9 47.2.A.11.228 3311891731 release-keys"

BUILD_FINGERPRINT := Sony/G8341/G8341:9/47.2.A.11.228/3311891731:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.usb.pid_suffix=1F3 \
    vendor.usb.rndis.func.name=gsi

ifneq ($(OMNI_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(OMNI_DEV_CERTIFICATE)
endif
