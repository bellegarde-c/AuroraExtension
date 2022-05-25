LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-auroraservices.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_ENFORCE_USES_LIBRARIES := false
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := AuroraExtension
LOCAL_SRC_FILES := AuroraServices.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := privapp-permissions-auroraservices.xml
include $(BUILD_PREBUILT)

