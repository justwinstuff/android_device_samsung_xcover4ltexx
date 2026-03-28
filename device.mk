# SPDX-License-Identifier: Apache-2.0

# Inherit from common samsung exynos7570-common
$(call inherit-product, device/samsung/universal7570-common/device-common.mk)

# Set the screen density (adjust if 320 is wrong for xcover4)
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Hardware features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Call the proprietary blobs (This is usually where your build.prop content comes from)
$(call inherit-product, vendor/samsung/xcover4lte/xcover4lte-vendor.mk)
