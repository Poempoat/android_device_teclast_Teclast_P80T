#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from P80T device
$(call inherit-product, device/teclast/P80T/device.mk)

PRODUCT_DEVICE := P80T
PRODUCT_NAME :/root/output/teclast/P80T=twrp_P80T
PRODUCT_BRAND := Teclast
PRODUCT_MODEL := P80T
PRODUCT_MANUFACTURER := teclast

PRODUCT_GMS_CLIENTID_BASE := android-teclast

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ad8638vat-user 12 SQ1A.220105.002 20221114.172536 release-keys"

BUILD_FINGERPRINT := Teclast/P80T/P80T:12/SQ1A.220105.002/b3d216518:user/release-keys
