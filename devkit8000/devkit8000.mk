# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_PACKAGES += \
	LedTest \
	LedClient

PRODUCT_COPY_FILES += \
    device/mokoid/devkit8000/com.mokoid.server.xml:system/etc/permissions/com.mokoid.server.xml

# If we get a real board, put these in.
PRODUCT_COPY_FILES += \
     device/mokoid/devkit8000/init.rc:root/init.rc

# Overrides (see build.prop for results)
PRODUCT_NAME := devkit8000
PRODUCT_DEVICE := devkit8000
