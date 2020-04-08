################################################################################
#
# ninvaders
#
################################################################################

NINVADERS_VERSION = 0.1.1
NINVADERS_SITE = http://downloads.sourceforge.net/project/ninvaders/ninvaders/$(NINVADERS_VERSION)
NINVADERS_DEPENDENCIES = ncurses

define NINVADERS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CFLAGS) -fcommon" -C $(@D)
endef

define NINVADERS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/nInvaders $(TARGET_DIR)/usr/bin/nInvaders
endef

$(eval $(generic-package))
