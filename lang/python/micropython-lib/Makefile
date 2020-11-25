#
# Copyright (C) 2008-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=micropython-lib
PKG_VERSION:=2.11.0.15
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pfalcon/pycopy-lib
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=39508ce0c80fcf17ecca034af74d69e6fb054e51
PKG_HASH:=66e15380eb109613263beb6825b8eecb9191088270c1a59e8c7d922dd57183c7

PKG_MAINTAINER:=Paul Sokolovsky <pfalcon@users.sourceforge.net>
PKG_LICENSE:=MIT, PSFL
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/micropython-lib
    SUBMENU:=Python
    SECTION:=lang
    CATEGORY:=Languages
    TITLE:=micropython-lib
    URL:=https://github.com/micropython/micropython-lib
    DEPENDS:=+micropython
endef

define Package/micropython-lib/description
    This package contains micropython-lib, a project to develop a non-monolothic
    standard library for Micro Python. Note that this is a work in progress and
    several libraries may be missing, incomplete or buggy.
endef

MAKE_FLAGS:=\
	PREFIX=$(PKG_BUILD_DIR)/_install_tmp/dist \
	install

define Package/micropython-lib/install
	$(INSTALL_DIR) $(1)/usr/lib/micropython
	$(CP) $(PKG_BUILD_DIR)/_install_tmp/dist/* $(1)/usr/lib/micropython
endef

$(eval $(call BuildPackage,micropython-lib))

