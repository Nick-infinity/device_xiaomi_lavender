# 
# Copyright (C) 2017-2018 The AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jason device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common BeastROMs stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/beast/config/common.mk)

PRODUCT_NAME := beast_lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 7

BEAST_BUILD_TYPE := OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 10.3.5.0.PFGMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/lavender/lavender:9/PKQ1.180904.001/V10.3.5.0.PFGMIXM:user/release-keys"
