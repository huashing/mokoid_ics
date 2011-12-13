#
# Target processor is Samsung Exynos 4210
#
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

#
# EGL configuration (no EGL at Samsung Exynos 4210)
#
BOARD_EGL_CFG := device/mokoid/mldk/egl.cfg

#
# Graphics configuration
# 
#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
#BOARD_USES_COPYBIT := true
USE_OPENGL_RENDERER := true

#
# Some general configurations
#
BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
TARGET_NO_KERNEL := true

#
# Use libstagefright
#
BUILD_PV_VIDEO_ENCODERS := 1
BUILD_PV_2WAY := 1
BUILD_PV_TEST_APPS := 1

#
# Use libvpx (vp8)
#
#ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
