# OpenSUSE 15.1 VirtualBox image builder

Here are files to build VirtualBox image (ova) of OpenSUSE15.1 
using HashiCorp's Packer.

WARNING! Work in progress.


Recommended software:
- VirtualBox 5.x (tested 5.2.32)
- HashiCorp's Packer 0.12.2
- Host OS: Windows 10 Enterprise N


How to build image:

```cmd
rem must pass without error
packer validate opensuse-15.X-amd64.json
rem If it fails on SSH handshake, press 'r' and ENTER to retry
packer build -on-error=ask opensuse-15.X-amd64.json

```

# Notes

There is now experimentl support for Tumbleweed using
file `opensuse-tumbleweed-amd64.json`.

# Bugs

* no `man` installed - it is because ridiculous dependency
  on X11 and CUPS


