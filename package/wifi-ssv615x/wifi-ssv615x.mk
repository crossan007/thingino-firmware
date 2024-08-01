WIFI_SSV615X_SITE_METHOD = git
WIFI_SSV615X_SITE = https://github.com/openipc/ssv6x5x
WIFI_SSV615X_SITE_BRANCH = ssv615x
WIFI_SSV615X_VERSION = $(shell git ls-remote $(WIFI_SSV615X_SITE) $(WIFI_SSV615X_SITE_BRANCH) | head -1 | cut -f1)

WIFI_SSV615X_LICENSE = GPL-2.0
WIFI_SSV615X_LICENSE_FILES = COPYING

WIFI_SSV615X_MODULE_MAKE_OPTS = \
	KSRC=$(LINUX_DIR)

define WIFI_SSV615X_INSTALL_TARGET_CMDS
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/share/wifi $(WIFI_SSV615X_PKGDIR)/files/ssv6155-usb-40M.cfg
endef

$(eval $(kernel-module))
$(eval $(generic-package))
