#
# Copyright (C) 2013-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=zsh
PKG_VERSION:=5.9
PKG_RELEASE:=3

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@SF/zsh
PKG_HASH:=9b8d1ecedd5b5e81fbf1918e876752a7dd948e05c1a0dba10ab863842d45acd5

PKG_MAINTAINER:=Vadim A. Misbakh-Soloviov <openwrt-zsh@mva.name>
PKG_LICENSE:=ZSH
PKG_LICENSE_FILES:=LICENCE
PKG_CPE_ID:=cpe:/a:zsh:zsh

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_FLAGS:=gc-sections lto

include $(INCLUDE_DIR)/package.mk

define Package/zsh/Default
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Shells
  TITLE:=The Z shell
  DEPENDS:=+libcap +libncurses +libncursesw +libpcre2 +librt
  URL:=https://www.zsh.org/
endef

define Package/zsh
  $(call Package/zsh/Default)
  TITLE+= (shared)
  DEPENDS:=+zsh-common
  VARIANT:=shared
endef

define Package/zsh-static
  $(call Package/zsh/Default)
  TITLE+= (static)
  DEPENDS:=+zsh-common
  VARIANT:=static
  CONFLICTS:=zsh
endef

define Package/zsh-common
  $(call Package/zsh/Default)
  TITLE+= (functions, completions, etc.)
endef

define Package/zsh/description
	Zsh is a UNIX command interpreter (shell) usable as an interactive
	login  shell  and  as a shell script command processor. Of the standard
	shells, zsh most closely resembles ksh but includes many enhancements.
	Zsh has command line editing, builtin spelling correction, programmable
	command completion, shell functions (with autoloading), a history
	mechanism, and a host of other features.
endef

define Package/zsh-static/description
	Statically linked version of ZSH
endef

MISC_FUNCS := allopt checkmail getjobs harden promptnl run-help run-help-git run-help-ip run-help-openssl run-help-p4 run-help-svk run-help-sudo run-help-svn sticky-note tetriscurses tetris xtermctl zkbd zrecompile

LINUX_COMP := _acpi _acpitool _alsa-utils _analyseplugin _btrfs _chattr _chcon _cpupower _cryptsetup _dkms _e2label _findmnt _fuse_arguments _fuse_values _fusermount _gpasswd _iconvconfig _kpartx _lsattr _lsblk _ltrace _mdadm _mii-tool _modutils _mondo _networkmanager _pkgtool _pmap _qdbus _schedtool _selinux_contexts _selinux_roles _selinux_types _selinux_users _setsid _slabtop _ss _sshfs _sysstat _tload _tpb _tracepath _uml _valgrind _vserver _wakeup_capable_devices _wipefs _wpa_cli

UNIX_COMP := _a2ps _aap _abcde _ack _adb _ansible _ant _antiword _apachectl _apm _arping _asciidoctor _asciinema _at _augeas _avahi _baz _beep _bibtex _bison _bittorrent _bogofilter _bpython _bzr _cabal _cal _calendar _ccal _cdcd _cdrdao _cdrecord _chkconfig _clay _composer _configure _cowsay _cpio _cplay _cscope _cssh _ctags_tags _cvs _darcs _dbus _dconf _devtodo _dhclient _django _dmidecode _doas _dos2unix _drill _dsh _dtruss _dvi _ecasound _ed _elfdump _elinks _enscript _entr _espeak _etags _fakeroot _feh _fetchmail _ffmpeg _figlet _finger _flac _flex _fmt _fortune _fsh _gcc _gcore _gdb _gem _genisoimage _getfacl _getmail _ghostscript _git _gnupod _gnutls _go _gphoto2 _gprof _gradle _graphicsmagick _groff _growisofs _gsettings _guilt _iconv _imagemagick _initctl _ipsec _irssi _ispell _java _java_class _joe _knock _kvno _ld_debug _ldconfig _lha _libvirt _lldb _lp _luarocks _lynx _lz4 _lzop _mail _make _man _mencal _mh _monotone _moosic _mosh _mpc _mt _mtools _mtr _mutt _myrepos _mysql_utils _mysqldiff _ncftp _ngrep _nkf _nl _nm _nmap _npm _numfmt _objdump _od _openstack _other_accounts _pack _pandoc _paste _patchutils _pax _pbm _pdf _perforce _perl _perl_basepods _perl_modules _perldoc _php _picocom _pine _pkg-config _pkgadd _pkginfo _pkgrm _pon _postfix _postgresql _postscript _printers _prove _pspdf _pump _pwgen _pydoc _qemu _quilt _rake _ranlib _rar _rclone _rcs _readelf _ri _rlogin _rubber _ruby _runit _samba _sccs _scons _screen _seafile _setfacl _shasum _showmount _shred _shuf _sisu _slrn _smartmontools _socket _spamassassin _split _sqlite _sqsh _stdbuf _stgit _stow _strip _stty _su _subversion _sudo _surfraw _swaks _swanctl _swift _tardy _tcptraceroute _terminals _tex _texi _texinfo _tidy _tiff _time_zone _timeout _tin _tla _todo.sh _toilet _topgit _totd _transmission _truss _twidge _twisted _unace _unexpand _unison _units _vcsh _visudo _vmstat _vorbis _vpnc _w _w3m _webbrowser _whereis _who _whois _wiggle _xmlsoft _xmlstarlet _xmms2 _xz _yafc _yodl _yp _zdump _zfs _zfs_dataset _zfs_keysource_props _zfs_pool _zip _zpool

ZSH_COMP := _zftp

MODULES = mathfunc pcre regex cap curses stat
MODULES += attr clone files mapfile nearcolor newuser system zprof zpty zselect deltochar
MODULES += private socket tcp watch

# zsh include custom macro in the default aclocal.m4
# When autoreconf PKG_FIXUP is used, if PKG_REMOVE_FILES
# is not defined, it's set to remove the file aclocak.m4
# by default resulting in problem with the custom macro
# AC_PROG_LN
# To prevent this, declare empty PKG_REMOVE_FILES
PKG_REMOVE_FILES:=

COMMON_ARGS = \
	--disable-etcdir \
	--disable-gdbm \
	--enable-pcre \
	--enable-cap \
	--enable-multibyte \
	--enable-unicode9 \
	--with-tcsetpgrp \
	--with-term-lib="ncursesw" \
	--enable-fndir=$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions \
	--enable-site-fndir=$(CONFIGURE_PREFIX)/share/zsh/site-functions \
	--enable-function-subdirs \
	zsh_cv_sys_nis=no \
	zsh_cv_sys_nis_plus=no

COMMON_ARGS += $(if $(CONFIG_USE_MUSL),--enable-libc-musl)

BUILD_STATIC_FLAGS =  --disable-dynamic
BUILD_STATIC_FLAGS += --enable-ldflags=-static
BUILD_STATIC_FLAGS += --disable-dynamic-nss

BUILD_SHARED_FLAGS = \
		zsh_cv_shared_environ=yes \
		zsh_cv_sys_dynamic_clash_ok=yes\
		zsh_cv_sys_dynamic_execsyms=yes \
		zsh_cv_sys_dynamic_rtld_global=yes \
		zsh_cv_sys_dynamic_strip_exe=yes \
		zsh_cv_sys_dynamic_strip_lib=yes

ifeq ($(BUILD_VARIANT), static)
  BUILD_VARIANT_FLAGS=$(BUILD_STATIC_FLAGS)
else
  TARGET_CFLAGS += $(FPIC) -flto
  TARGET_LDFLAGS += $(FPIC) -Wl,--gc-sections -flto
  BUILD_VARIANT_FLAGS=$(BUILD_SHARED_FLAGS)
endif

define Build/Configure
	$(call Build/Configure/Default, \
		$(COMMON_ARGS) \
		$(BUILD_VARIANT_FLAGS) \
	)
endef

define Build/Compile
	# Do not install these functions:
	$(SED) 's, Completion/AIX/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/BSD/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Cygwin/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Darwin/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Debian/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Mandriva/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Redhat/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/Solaris/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/X/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules
	$(SED) 's, Completion/openSUSE/\*/\*,,g' $(PKG_BUILD_DIR)/config.modules

	# Build modules statically
ifeq ($(BUILD_VARIANT),static)
	$(foreach MODULE,$(MODULES), \
	$(SED) 's,$(MODULE).mdd link=no,$(MODULE).mdd link=static,g' $(PKG_BUILD_DIR)/config.modules )
endif

	# After mucking with 'config.modules', one must call
	$(MAKE) -C $(PKG_BUILD_DIR) DESTDIR="$(PKG_INSTALL_DIR)" prep
	# $(MAKE) -C $(PKG_BUILD_DIR) DESTDIR="$(PKG_INSTALL_DIR)"
endef

TARGET_CFLAGS += $(FPIC)
TARGET_LDFLAGS += $(FPIC)

define Package/zsh/postinst
#!/bin/sh
for prefix in usr/bin bin; do
  grep -qE "^$(CONFIGURE_PREFIX)/$$prefix/zsh$$" "$${IPKG_INSTROOT}/etc/shells" || \
  echo "$(CONFIGURE_PREFIX)/$$prefix/zsh" >> "$${IPKG_INSTROOT}/etc/shells"
done
endef

define Package/zsh-static/postinst
	$(call Package/zsh/postinst,$(1))
endef

define Package/zsh-common/install
	$(INSTALL_DIR) $(1)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)
	# rm -f $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/usr/share/help
	rm -fr $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/help
	rm -fr $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/MIME
	# rm -fr $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/VCS_Info
	rm -fr $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Zftp
	rm -f $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Prompts/prompt_*
	rm -f $(addprefix $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Misc/, $(MISC_FUNCS))
	rm -f $(addprefix $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Completion/Zsh/, $(ZSH_COMP))
	rm -f $(addprefix $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Completion/Unix/, $(UNIX_COMP))
	rm -f $(addprefix $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/functions/Completion/Linux/, $(LINUX_COMP))
	$(CP) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/* $(1)/$(CONFIGURE_PREFIX)/share/zsh/$(PKG_VERSION)/
endef

define Package/zsh/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_DIR) $(1)/$(CONFIGURE_PREFIX)/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/bin/zsh $(1)/$(CONFIGURE_PREFIX)/bin/
	$(INSTALL_DIR) $(1)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/{net,param}
	$(CP) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/* $(1)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/
	$(CP) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/net/* $(1)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/net/
	$(CP) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/param/* $(1)/$(CONFIGURE_PREFIX)/lib/zsh/$(PKG_VERSION)/zsh/param/
endef

define Package/zsh-static/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_DIR) $(1)/$(CONFIGURE_PREFIX)/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/$(CONFIGURE_PREFIX)/bin/zsh $(1)/$(CONFIGURE_PREFIX)/bin/
endef

$(eval $(call BuildPackage,zsh))
$(eval $(call BuildPackage,zsh-static))
$(eval $(call BuildPackage,zsh-common))
