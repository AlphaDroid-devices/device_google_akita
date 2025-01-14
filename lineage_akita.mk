#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/akita/aosp_akita.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/akita/akita/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_akita

# Xtras
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true
TARGET_BUILD_PACKAGE :=  3

#AlphaDroid
ALPHA_BUILD_TYPE := official
ALPHA_MAINTAINER := OscarM

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=akita \
    PRIVATE_BUILD_DESC="akita-user 14 AP2A.240705.005 11942872 release-keys"

BUILD_FINGERPRINT := google/akita/akita:14/AP2A.240705.005/11942872:user/release-keys

$(call inherit-product, vendor/google/akita/akita-vendor.mk)
