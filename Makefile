ifeq ($(PLATFORM), mac)
export TARGET = uikitformac:latest:13.0
else
export TARGET = iphone:10.3:9.0
export ARCHS = armv7 arm64
endif

INSTALL_TARGET_PROCESSES = Zebra

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = Zebra

# Zebra_XCODEFLAGS = PACKAGE_VERSION='@\"$(THEOS_PACKAGE_BASE_VERSION)\"'
Zebra_XCODE_SCHEME = Zebra
Zebra_CODESIGN_FLAGS = -SZebra/Zebra.entitlements

include $(THEOS_MAKE_PATH)/xcodeproj.mk

SUBPROJECTS = Supersling

include $(THEOS_MAKE_PATH)/aggregate.mk