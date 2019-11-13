# Google Apps

DEVICE := $(shell echo $(LINEAGE_BUILD) | sed 's/^.*-//')

ifeq ($(WITH_GMS), true)
GAPPS_VARIANT := nano
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
endif


# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
