LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),m51)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif