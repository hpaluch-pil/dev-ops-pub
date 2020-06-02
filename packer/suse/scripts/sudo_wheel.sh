#!/bin/bash

cat > /etc/sudoers.d/sudo_wheel <<EOF
# group wheel can sudo without password
%wheel ALL=(ALL) NOPASSWD: ALL
EOF
