LOCAL_PATH := $(call my-dir)

$(warning !!!TARGET_OUT_ETC!!! is-- $(TARGET_OUT_ETC))
$(warning !!!TARGET_ROOT_OUT!!! is-- $(TARGET_ROOT_OUT))
$(warning !!!TARGET_OUT_VENDOR_ETC!!! is-- $(TARGET_OUT_VENDOR_ETC))

TARGET_VENDOR_OVERLAY := out/target/product/raphael/system/product/vendor_overlay/29

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mi_thermald.rc
#LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_TAGS  := userdebug
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.mi_thermald.rc
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.qcom.rc
#LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_TAGS  := userdebug
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.qcom.rc
#LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
LOCAL_MODULE_PATH  := $(TARGET_VENDOR_OVERLAY)/etc/init/hw
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
#LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.qcom
#LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_TAGS  := userdebug
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/fstab.qcom
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
#LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
LOCAL_MODULE_PATH  := $(TARGET_VENDOR_OVERLAY)/etc
include $(BUILD_PREBUILT)
