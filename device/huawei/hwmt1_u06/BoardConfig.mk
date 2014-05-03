TARGET_OTA_ASSERT_DEVICE := hwmt1_u06

USE_CAMERA_STUB := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# inherit from the proprietary version
-include vendor/huawei/hwmt1_u06/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_GRALLOC_USES_ASHMEM := true

NEED_WORKAROUND_CORTEX_A9_745320 := true

TARGET_BOOTLOADER_BOARD_NAME := hwmt1_u06
BOARD_VENDOR_PLATFORM := k3v2oem1

TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlcore_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wlcore_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif 

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_WPAN_DEVICE :=true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hwmt1_u06/bluetooth
#TARGET_PREBUILT_KERNEL := device/huawei/hwmt1_u06/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.6
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/hwmt1_u06/kernel
TARGET_KERNEL_SOURCE := kernel/huawei/mt1/cmkernel
TARGET_KERNEL_CONFIG := mate_defconfig

# Camera
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DUSE_TP_TK_MATE

#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/hwmt1_u06/ril/

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

# Graphics
BOARD_EGL_CFG := device/huawei/common/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_CMDLINE := vmalloc=512M k3v2_pmem=1 mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(reserved1),p8(reserved2),p9(splash2),p10(recovery2),p11(recovery),p12(boot),p13(modemimage),p14(modemnvm1),p15(modemnvm2),p16(system),p17(cache),p18(cust),p19(userdata);mmcblk1:p1(ext_sdcard)
BOARD_KERNEL_BASE := 0x0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01400000

# Partitions
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p16
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p19
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5255462912
BOARD_WANTS_EMMC_BOOT := true
TARGET_PROVIDES_INIT_RC := true

# USB config
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp


# USB mass storage
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
#BOARD_MTP_DEVICE := "/dev/mtp"
BOARD_VOLD_MAX_PARTITIONS := 19
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_FUSE_SDCARD_UID := 1015
TARGET_FUSE_SDCARD_GID := 1015

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_HAS_LOCKED_BOOTLOADER := true
#RECOVERY_FSTAB_VERSION := 2
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/hwmt1_u06/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/huawei/common/recovery/etc/recovery.fstab
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
TARGET_RECOVERY_INITRC := device/huawei/common/recovery/init.rc
TARGET_PROVIDES_RECOVERY_INIT_RC := true
BOARD_RECOVERY_SWIPE := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_USES_MMCUTILS := true

#TWRP
#HAVE_SELINUX := true
#TWHAVE_SELINUX := false
TW_MAX_BRIGHTNESS := 255
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true

#TW_ALWAYS_RMRF := true
#TW_NEVER_UMOUNT_SYSTEM := true

TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"

RECOVERY_SDCARD_ON_DATA := true 
#TW_HAS_NO_RECOVERY_PARTITION := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_INTERNAL_STORAGE_PATH := "/data/share"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_BRIGHTNESS_PATH := "/sys/devices/platform/k3_fb.1/leds/lcd_backlight0/brightness"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p19"
TW_CRYPTO_MNT_POINT := "/data"

#BOARD_SEPOLICY_DIRS += \
#    device/huawei/common/sepolicy

#BOARD_SEPOLICY_UNION += \
#    bluetooth.te \
#    debuggered.te \
#    device.te \
#    dhcp.te \
#    domain.te \
#    file.te \
#    file_contexts \
#    init_shell.te \
#    mediaserver.te \
#    netd.te \
#    rild.te \
#    system.te \
#    vold.te \
#    zygote.te \
#    healthd.te \
