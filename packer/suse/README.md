# OpenSUSE 15.5 VirtualBox image builder

Here are files to build VirtualBox image (ova) with
openSUSE LEAP 15.5 using HashiCorp's Packer.

WARNING! Work in progress.

Recommended software:
- VirtualBox 7.x (tested 7.0.8)
- HashiCorp's Packer 1.9.1/Windows
  - tested https://releases.hashicorp.com/packer/1.9.1/packer_1.9.1_windows_amd64.zip
- Host OS: Windows 10 Enterprise N

How to build image:

```cmd
rem must pass without error
packer validate opensuse-15.X-amd64.json
rem If it fails on SSH handshake, press 'r' and ENTER to retry
packer build -on-error=ask opensuse-15.X-amd64.json

```

# Notes

There is now experimental support for Tumbleweed using
file `opensuse-tumbleweed-amd64.json`.

WARNING! Tumbleweed changes very frequently (every few days). So you
very likely need to update `suse_version` and `iso_hash"` in
`opensuse-tumbleweed-amd64.json` to build it successfully.

# Bugs

* no `man` installed - it is because ridiculous dependency
  on X11 and CUPS


