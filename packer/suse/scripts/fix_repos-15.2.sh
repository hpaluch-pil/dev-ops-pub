#!/bin/bash

set -xe
curl -o /etc/zypp/repos.d/openSUSE-Leap-15.2-update.repo \
	 http://ftp.linux.cz/pub/linux/opensuse/update/leap/15.2/oss/openSUSE:Leap:15.2:Update.repo
for i in /etc/zypp/repos.d/*.repo
do
	sed -i.rpmsave -e 's@download.opensuse.org@ftp.linux.cz/pub/linux/opensuse@' $i
done
zypper lr
zypper update -y
exit 0

