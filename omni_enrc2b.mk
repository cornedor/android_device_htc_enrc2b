#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration 
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_enrc2b
PRODUCT_DEVICE := enrc2b
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := One X+
PRODUCT_MANUFACTURER := HTC

# Kernel inline build
TARGET_KERNEL_CONFIG := lenny_defconfig
TARGET_VARIANT_CONFIG := lenny_defconfig
TARGET_SELINUX_CONFIG := lenny_defconfig

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/enrc2b/enrc2b.mk)
$(call inherit-product-if-exists, vendor/htc/enrc2b/enrc2b-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)


#Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=enrc2b BUILD_FINGERPRINT="htc_europe/enrc2b/enrc2b:4.3/JRO03C/125529.22:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.22 CL125529 release-keys"


#### OLD

		# ## Specify phone tech before including full_phone
		# $(call inherit-product, vendor/omni/config/gsm.mk)
		# # Release name
		# PRODUCT_RELEASE_NAME := enrc2b

		# # Inherit some common CM stuff.
		# # $(call inherit-product, vendor/omni/config/common_full_phone.mk)

		# # Inherit from our custom product configuration 
		# $(call inherit-product, vendor/omni/config/common.mk)

		# # Enhanced NFC
		# #$(call inherit-product, vendor/pap/config/nfc_enhanced.mk)

		# # Inherit device configuration
		# $(call inherit-product, device/htc/enrc2b/full_enrc2b.mk)

		# ## Device identifier. This must come after all inclusions
		# PRODUCT_DEVICE := enrc2b
		# PRODUCT_NAME := pap_enrc2b
		# PRODUCT_BRAND := htc_europe
		# PRODUCT_MANUFACTURER := HTC
		# PRODUCT_MODEL := One X+

		# #Set build fingerprint / ID / Product Name etc.
		# PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=enrc2b BUILD_FINGERPRINT="htc_europe/enrc2b/enrc2b:4.3/JRO03C/125529.22:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.22 CL125529 release-keys"
