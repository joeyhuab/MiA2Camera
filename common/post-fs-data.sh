#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# Allow camera HAL to access the legacy /data paths
magiskpolicy --live "allow hal_camera_default camera_data_file file { getattr open read write }"
magiskpolicy --live "allow hal_camera_default camera_data_file dir search"
