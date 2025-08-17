#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from x6812 device
$(call inherit-product, device/infinix/x6812/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_x6812
PRODUCT_DEVICE := x6812
PRODUCT_MANUFACTURER := Infinix
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 11S

PRODUCT_SYSTEM_NAME := Hot 11s
PRODUCT_SYSTEM_DEVICE := x6812

PRODUCT_GMS_CLIENTID_BASE := android-transsion

# Build description and fingerprint
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.description=Infinix-x6812-user\ 11\ RP1A.200720.011\ 230921V810\ release-keys \
    ro.build.fingerprint=Infinix/x6812-GL/Infinix-x6812:11/RP1A.200720.011/230921V810:user/release-keys \
    ro.product.system.model=$(PRODUCT_SYSTEM_DEVICE) \
    ro.product.system.name=$(PRODUCT_SYSTEM_NAME) \
    ro.product.model=$(PRODUCT_SYSTEM_DEVICE) \
    ro.product.device=$(PRODUCT_SYSTEM_NAME)
