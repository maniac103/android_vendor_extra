# Google Apps

DEVICE := $(shell echo $(LINEAGE_BUILD) | sed 's/^.*-//')

ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/common/common-vendor.mk)
endif

PRODUCT_PACKAGES += OclickHandler

# Safetynet
PRODUCT_PACKAGES += ih8sn.conf.enchilada

PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Soong
PRODUCT_SOONG_NAMESPACES += vendor/extra

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
