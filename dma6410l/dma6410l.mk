# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_PACKAGES += \
	LedTest \
	LedClient

PRODUCT_COPY_FILES += \
    device/mokoid/dma6410l/com.mokoid.server.xml:system/etc/permissions/com.mokoid.server.xml

#PRODUCT_COPY_FILES += \
#    device/mokoid/dma6410xp/led.ko:root/lib/modules/led.ko
#    device/mokoid/omap3/init.rc:root/init.rc
#    device/mokoid/dma6410xp/init.rc:root/init.rc \
#    device/mokoid/dma6410xp/init.dma6410xp.rc:root/init.dma6410xp.rc

# Overrides (see build.prop for results)
PRODUCT_NAME := dma6410l
PRODUCT_DEVICE := dma6410l
