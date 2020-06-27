#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogg device
$(call inherit-product, device/oneplus/hotdogg/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdogg
PRODUCT_DEVICE := hotdogg
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1925
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
#BUILD_FINGERPRINT := "OnePlus/OnePlus7TProNR/OnePlus7TProNR:10/QKQ1.190716.003/2003210756:user/release-keys"
#BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
#PRODUCT_BUILD_PROP_OVERRIDES += \
 #   PRODUCT_DEVICE=OnePlus7TProNR \
  #  PRODUCT_NAME=OnePlus7TProNR \
  #  PRIVATE_BUILD_DESC="OnePlus7TProNR-user 10 QKQ1.190716.003 2003210756 release-keys"
VENDOR_RELEASE := 10/QKQ1.190716.003/2003210756:user/release-keys
BUILD_FINGERPRINT := OnePlus/OnePlus7TProNR/OnePlus7TProNR:$(VENDOR_RELEASE)
#PRODUCT_BUILD_PROP_OVERRIDES += \
 #   PRODUCT_DEVICE=OnePlus7TProNR \
  #  PRODUCT_NAME=OnePlus7TProNR \
PRIVATE_BUILD_DESC := "'OnePlus7TProNR-user 10 QKQ1.190716.003 2003210756 release-keys'" 

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
