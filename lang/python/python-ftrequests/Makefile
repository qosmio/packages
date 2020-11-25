#
# Copyright (C) 2015-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-ftrequests
PKG_VERSION:=20.09.09
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/juancarlospaco/faster-than-requests
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=726aaf55aadd78089d78d01a5c27b6855dd52c5d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>, Alexandru Ardelean <ardeleanalex@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ftrequests
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Faster requests on Python 3
  URL:=https://github.com/juancarlospaco/faster-than-requests
  DEPENDS:= \
      +python3-light +python3-setuptools
endef

define Package/python3-ftrequests/description
 Faster requests on Python 3
endef

$(eval $(call Py3Package,python3-ftrequests))
$(eval $(call BuildPackage,python3-ftrequests))
$(eval $(call BuildPackage,python3-ftrequests-src))
