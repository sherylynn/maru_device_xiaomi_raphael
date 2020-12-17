#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/lineage_raphael.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVender.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_NAME := maru_raphael

BUILD_FINGERPRINT := "google/walleye/walleye:9/PQ2A.190405.003/5310204:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raphael-user 9 PKQ1.181121.001 V10.3.12.0.PFKCNXM release-keys" \
    PRODUCT_NAME="raphael" \
    TARGET_DEVICE="raphael"

MARU_VERSION := 0.7-test
MARU_BUILD_VERSION := $(MARU_VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
