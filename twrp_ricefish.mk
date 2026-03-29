#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ricefish device
$(call inherit-product, device/mobvoi/ricefish/device.mk)

PRODUCT_DEVICE := ricefish
PRODUCT_NAME := twrp_ricefish
PRODUCT_BRAND := Mobvoi
PRODUCT_MODEL := TicWatch E3
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ricefish-user 11 RMKB.240228.004 239 release-keys"

BUILD_FINGERPRINT := Mobvoi/ricefish/ricefish:11/RMKB.240228.004/239:user/release-keys
