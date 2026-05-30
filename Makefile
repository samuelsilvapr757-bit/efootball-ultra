include $(THEOS)/makefiles/common.mk

TWEAK_NAME = eFootballUltra
eFootballUltra_FILES = Tweak.xm
eFootballUltra_PLIST = eFootballUltra.plist
eFootballUltra_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
