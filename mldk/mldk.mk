# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_PACKAGES += \
	LedTest \
	LedClient

PRODUCT_COPY_FILES += \
    device/mokoid/mldk/com.mokoid.server.xml:system/etc/permissions/com.mokoid.server.xml

#PRODUCT_COPY_FILES += \
#    device/mokoid/mldk/cdata.ko:root/lib/modules/cdata.ko

# If we get a real board, put these in.
PRODUCT_COPY_FILES += \
     device/mokoid/mldk/init.nfs.rc:root/init.rc \
     device/mokoid/mldk/egl.cfg:system/lib/egl/egl.cfg

# DMA210L keypad
PRODUCT_COPY_FILES += \
     device/mokoid/smdkv210/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl

#device/mokoid/omap3/init.rc:root/init.rc
#     device/mokoid/mldk/rcS:root/etc/init.d/rcS \

# Overrides (see build.prop for results)
PRODUCT_NAME := mldk
PRODUCT_DEVICE := mldk
