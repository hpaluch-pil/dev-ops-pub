#!/bin/bash

> /etc/udev/rules.d/70-persistent-net.rules
fstrim -av
df -h

