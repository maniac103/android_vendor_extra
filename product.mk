# Google Apps

DEVICE := $(shell echo $(LINEAGE_BUILD) | sed 's/^.*-//')

ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
endif

PRODUCT_PACKAGES += OclickHandler

# Email
PRODUCT_PACKAGES += Email
PRODUCT_COPY_FILES += \
    vendor/extra/sysconfig.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/custom.xml

# Safetynet
PRODUCT_PACKAGES += ih8sn.conf.enchilada

PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Soong
PRODUCT_SOONG_NAMESPACES += vendor/extra

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys
