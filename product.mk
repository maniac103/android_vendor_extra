# Google Apps

DEVICE := $(shell echo $(LINEAGE_BUILD) | sed 's/^.*-//')

ifeq ($(WITH_GMS), true)
ifeq ($(DEVICE),r5)
$(call inherit-product, vendor/gapps/arm/arm-vendor.mk)
else
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
endif
endif

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
