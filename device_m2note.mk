$(call inherit-product-if-exists, vendor/meizu/m2note/m2note-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PATH := device/meizu/m2note

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := m2note,m2n,meizu_m2_note,m571,m571h

# Device artwork density
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Product fragments
-include $(DEVICE_PATH)/product/*.mk

-include vendor/mediatek/VendorProduct.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
