#
# Copyright (C) 2008-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=micropython
PKG_VERSION:=1.14
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/micropython/micropython
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=b0932fcf2e2f9a81abf7737ed4b2573bd9ad4a49
PKG_HASH:=05f95682e7ddfb08c317e83826df9a1d636676f3

PKG_MAINTAINER:=Roger D <rogerdammit@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/micropython
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Micro Python
  URL:=https://micropython.org
  DEPENDS:=+libffi
endef

define Package/micropython/description
 This package contains Micro Python, a lean and fast implementation of the Python 3.4 programming language
 that is optimised to run on a microcontroller (and low power computers).
endef


MAKE_FLAGS += -C $(PKG_BUILD_DIR)/ports/unix FROZEN_MPY_DIR=

define Build/Compile
	+$(MAKE) -C $(PKG_BUILD_DIR)/mpy-cross
	$(call Build/Compile/Default)

endef

define Package/micropython/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ports/unix/micropython $(1)/usr/bin/micropython
endef

$(eval $(call BuildPackage,micropython))
