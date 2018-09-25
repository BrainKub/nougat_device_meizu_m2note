# Recovery
RECOVERY_VARIANT=twrp
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/meizu/m2note/rootdir/fstab.mt6735
# TWRP-specific
ifeq ($(RECOVERY_VARIANT), twrp)

# Don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true

#TWRP Fix slow wiping
BOARD_SUPPRESS_EMMC_WIPE := true

#TW_USE_TOOLBOX := true
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_DEVICE_VERSION := By BrainKub
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
BOARD_HAS_FLIPPED_SCREEN := true

# The path to a temperature sensor
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
endif





