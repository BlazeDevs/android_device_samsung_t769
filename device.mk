#
# Copyright (C) 2014 The CyanogenMod Project
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

# Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/t769/t769-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/t769/overlay

PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/t769/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/t769/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Media
# WARNING: OVERRIDES VERSION FOUND IN msm8660-common
PRODUCT_COPY_FILES += \
    device/samsung/t769/configs/media_profiles.xml:system/etc/media_profiles.xml \

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)
