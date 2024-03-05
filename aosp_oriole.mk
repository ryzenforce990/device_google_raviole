#
# Copyright (C) 2023 The Derpfest Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Derpfest stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)


# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_horizon_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := aosp_oriole


# Horizondroid Flags
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BUILD_VIMUSIC := true

# Horizondroid
HORIZON_BUILD_TYPE= OFFICIAL
HORIZON_MAINTAINER := Finnaib

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
