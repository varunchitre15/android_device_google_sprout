# Copyright (C) 2013 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.sprout.rc:root/init.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.sprout:root/fstab.sprout \
    $(LOCAL_PATH)/rootdir/root/ueventd.sprout.rc:root/ueventd.sprout.rc \
    $(LOCAL_PATH)/rootdir/root/init.sprout.usb.rc:root/init.sprout.usb.rc 