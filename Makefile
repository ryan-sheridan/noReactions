TARGET := iphone:clang:latest:7.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = noReactions

noReactions_FILES = Tweak.x
noReactions_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
