#!/bin/bash

zypper remove -y samba-libs libvorbis gstreamer os-prober libX11-data \
	ypbind yp-tools cpio-mt crda tcl cantarell-fonts open-iscsi \
	cups-client cups-config wireless-regdb xfsprogs \
	libbtrfs0 btrfsmaintenance btrfsprogs \
	btrfsprogs-udev-rules poppler-data kernel-firmware
zypper install -y mc curl net-tools-deprecated


