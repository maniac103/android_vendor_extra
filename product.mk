# Google Apps
ifeq ($(WITH_GMS), true)
ifeq ($(filter lineage_r5,$(PRODUCT_NAME)),)
$(call inherit-product, vendor/gapps/arm/arm-vendor.mk)
else
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
endif
endif

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
