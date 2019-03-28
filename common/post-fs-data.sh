#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# Allow camera HAL to access the legacy /data paths
magiskpolicy --live "allow hal_camera_default camera_data_file file { getattr open read write }"
magiskpolicy --live "allow hal_camera_default camera_data_file dir search"