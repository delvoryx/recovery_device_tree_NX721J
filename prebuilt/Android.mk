LOCAL_PATH := $(call my-dir)\

include $(CLEAR_VARS)

LOCAL_MODULE := nebula_prebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)

LOCAL_HOST_REQUIRED_MODULES := depmod

PREBUILT_VENDOR_DIR := $(LOCAL_PATH)/NX721J/vendor

LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules; \
    if [ -d $(PREBUILT_VENDOR_DIR)/lib/modules ]; then \
        cp -rf $(PREBUILT_VENDOR_DIR)/lib/modules/*.ko $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules/; \
    fi; \
    mkdir -p $(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware; \
    if [ -d $(PREBUILT_VENDOR_DIR)/firmware ]; then \
        cp -rf $(PREBUILT_VENDOR_DIR)/firmware/* $(TARGET_RECOVERY_ROOT_OUT)/vendor/firmware/; \
    fi

include $(BUILD_PHONY_PACKAGE)
