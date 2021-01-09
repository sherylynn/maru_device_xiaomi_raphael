#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/lineage_raphael.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := maru_raphael
PRODUCT_MODEL := Maru on the Redmi K20 Pro

BUILD_FINGERPRINT := "google/walleye/walleye:9/PQ2A.190405.003/5310204:user/release-keys"

#PRODUCT_COPY_FILES += device/xiaomi/raphael/rootdir/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom
#PRODUCT_COPY_FILES += device/xiaomi/raphael/rootdir/init.qcom.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc

MARU_VERSION := 0.8-test
MARU_BUILD_VERSION := $(MARU_VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

DEVICE_PACKAGE_OVERLAYS += \
													 device/xiaomi/raphael/overlay_maru/daydream
