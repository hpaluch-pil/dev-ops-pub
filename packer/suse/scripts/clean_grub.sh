#!/bin/bash

set -xe

cat > /etc/default/grub_installdevice <<EOF
/dev/sda
activate
EOF

sed -i.orig -e 's/splash=.*quiet //' /etc/default/grub
update-bootloader --reinit
exit 0

