#
# Copyright (C) 2015 The Android Open Kang Project
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

LOCAL_PATH := device/samsung/zenltetmo

## device overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_gains.xml:system/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/mixer_gains.xml:system/vendor/etc/mixer_gains.xml \
    $(LOCAL_PATH)/configs/mixer_paths-audience.xml:system/etc/mixer_paths-audience.xml \
    $(LOCAL_PATH)/configs/mixer_paths_0-audience.xml:system/etc/mixer_paths_0-audience.xml \
    $(LOCAL_PATH)/configs/mixer_paths_0-audience.xml:system/vendor/etc/mixer_paths_0-audience.xml

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2018-08-01

# Inherit from noblelte-common
$(call inherit-product, device/samsung/noblelte-common/noblelte-common.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/nobleltetmo/nobleltetmo-vendor.mk)
