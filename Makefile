TARGET := iphone:clang:14.5:6.0
ARCHS = armv7 arm64 arm64e
PACKAGE_VERSION = 1.0.2
INSTALL_TARGET_PROCESSES = Cydia

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = cyarchfix

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
