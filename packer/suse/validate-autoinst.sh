#!/bin/bash
# validates openSUSE autoinst.xml file
# install: zypper in jing yast2-schema libxml2-tools
set -euo pipefail

cd $(dirname $0)
s=/usr/share/YaST2/schema/autoyast/rng/profile.rng 

for i in http/*.xml
do
	echo "Validating '$i'..."
set -x
	jing $s $i
	xmllint --noout  --relaxng $s $i
set +x
done
exit 0
