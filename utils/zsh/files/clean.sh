#!/bin/zsh

typeset -a Linux Unix Dirs
Linux=(_wpa_cli _wipefs _vserver _valgrind _uml _tracepath _tpb _tload _sysstat _strace _sshfs _ss _slabtop _setsid _schedtool _qdbus _pmap _pkgtool _networkmanager _mondo _modutils _mii-tool _mdadm _ltrace _lsblk _lsattr _kpartx _iconvconfig _gpasswd _fusermount _findmnt _e2label _dkms _cryptsetup _cpupower _chcon _chattr _btrfs _analyseplugin _alsa-utils _acpitool _acpi)
Linux+=(_fuse_arguments _fuse_values _selinux_contexts _selinux_roles _selinux_types _selinux_users _wakeup_capable_devices)
# Commands
Unix=(_zpool _zip _zfs _zdump _yp _yodl _yafc _xz _xmms2 _xmlstarlet _xmlsoft _wiggle _whois _who _whereis _webbrowser _w3m _w _vpnc _vorbis _vmstat _visudo _vim _vcsh  _units _unison _unexpand _unace _twisted _twidge _truss _transmission _totd _topgit _toilet _todo.sh _tla _tin _timeout _time_zone _tiff _tidy _texinfo _texi _tex _terminals _tcptraceroute _tardy _swift _swanctl _swaks _surfraw _sudo _subversion _su _stty _strip _stow _stgit _stdbuf _sqsh _sqlite _split _spamassassin _socket _smartmontools _slrn _sisu _shuf _shred _showmount _shasum _setfacl _seafile _screen _scons _sccs _samba _runit _ruby _rubber _rlogin _ri _readelf _rcs _rclone _rar _ranlib _rake _quilt _qemu _pydoc _pwgen _pump _pspdf _prove _printers _postscript _postgresql _postfix _pon _pkgrm _pkginfo _pkgadd _pkg-config _pine _picocom _php _perldoc _perl_modules _perl _perforce _pdf _pbm _pax _patchutils _paste _pandoc _pack _other_accounts _openstack _od _objdump _numfmt _npm _nmap _nm _nl _nkf _ngrep _ncftp _mysqldiff _mysql_utils _myrepos _mutt _mtr _mtools _mt _mpc _mosh _moosic _monotone _mh _mencal _man _make _mail _lzop _lz4 _lynx _luarocks _lp _lldb _libvirt _lha _ldconfig _ld_debug _kvno _knock _joe _java _ispell _irssi _ipsec _initctl _imagemagick _iconv _guilt _gsettings _growisofs _groff _graphicsmagick _gradle _gprof _gphoto2 _go _gnutls _gnupod  _git _ghostscript _getmail _getfacl  _genisoimage _gem _gdb _gcore _gcc _fsh _fortune _fmt _flex _flac _finger _figlet _ffmpeg _fetchmail _feh _fakeroot _etags _espeak _entr _enscript _elinks _elfdump _ed _ecasound _dvi _dtruss _dsh _drill _dos2unix _doas _dmidecode _django _dhclient _devtodo _dconf _darcs _cvs _cssh _cscope _cplay _cpio _cowsay _configure _composer _clay _chkconfig _cdrecord _cdrdao _cdcd _ccal _calendar _cal _cabal _bzr _bpython _bogofilter _bittorrent _bison _bibtex _beep _baz _augeas _at _asciinema _asciidoctor _arping _apm _apachectl _antiword _ant _ansible _adb _ack _abcde _aap _a2ps)
# Autoloads
Unix+=(_ctags_tags _java_class _perl_basepods _zfs_dataset _zfs_keysource_props _zfs_pool)
Dirs=(Linux Unix)
for dir in $Dirs[@]; do
	#echo ${(P)+dir}
	for i in ${(P)dir}; do
		echo rm ${1}/functions/Completion/${dir}/${i}
		rm -f ${1}/functions/Completion/${dir}/${i} 2>/dev/null
	done
done
