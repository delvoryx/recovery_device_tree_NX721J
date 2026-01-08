#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nubia/NX721J

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := NX721J

## Device identifier
PRODUCT_DEVICE := NX721J
PRODUCT_NAME := twrp_NX721J
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := Nubia Z60 Ultra
PRODUCT_MANUFACTURER := Nubia

# Assert
TARGET_OTA_ASSERT_DEVICE := NX721J

# Theme
TW_STATUS_ICONS_ALIGN := center