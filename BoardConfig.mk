#
# Copyright (C) 2011 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include p4-common
-include device/samsung/p4-common/BoardConfigCommon.mk

# Use the non-open-source parts, if they're present
-include vendor/samsung/p5/BoardConfigVendor.mk

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 699744256
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14080704512

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/samsung/p5
TARGET_KERNEL_CONFIG := cyanogenmod_p5_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

TARGET_OTA_ASSERT_DEVICE := p5,GT-P7300

BOARD_VENDOR := samsung

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6260
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"

TARGET_SPECIFIC_HEADER_PATH := device/samsung/p5/include
