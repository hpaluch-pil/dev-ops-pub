# OpenSUSE 15.1 VirtualBox image builder

Here are files to build VirtualBox image (ova) of OpenSUSE15.1 
using HashiCorp's Packer.

WARNING! Work in progress.

Thre are following bugs:
* wrong disk space calculation (to resolve, just click on "Continue")
* unable to login using SSH (TODO: investiage)


Recommended software:
- VirtualBox 5.x (tested 5.2.32)
- HashiCorp's Packer 0.12.2
- Host OS: Windows 10 Enterprise N


How to build image:

```cmd
rem must pass without error
packer validate opensuse15-amd64.json
rem currently failes on SSH connect! you have been warned...
packer build -on-error=ask opensuse15-amd64.json
```



