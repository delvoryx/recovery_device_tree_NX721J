#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_client \
    update_verifier \
    update_engine_sideload  \
    qcom_decrypt \
    qcom_decrypt_fbe \
    
PRODUCT_PACKAGES += \
    android.hardware.boot-service.qti \
    android.hardware.boot-service.qti.recovery \
    android.hardware.gatekeeper\
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.confirmationui@1.0.vendor \
    android.hardware.security.keymint-V1-ndk.vendor \
    android.hardware.security.sharedsecret-V1-ndk.vendor \
    android.hardware.security.secureclock-V1-ndk.vendor \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/bin/linker64_qti:$(TARGET_RECOVERY_ROOT_OUT)/vendor/bin/linker64_qti \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libapexsupport.so:$(TARGET_RECOVERY_ROOT_OUT)/vendor/lib64/libapexsupport.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libc++.so:$(TARGET_RECOVERY_ROOT_OUT)/vendor/lib64/libc++.so

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 32

# VNDK API
PRODUCT_TARGET_VNDK_VERSION := 34

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

TWRP_REQUIRED_MODULES += \
    nebula_prebuilt
