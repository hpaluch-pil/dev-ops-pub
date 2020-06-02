#!/bin/bash

cat >> /etc/issue <<EOF

NAT       IP: \4{eth0}
Host-only IP: \4{eth1}

EOF
