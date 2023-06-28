\apps\BATS\packer.exe validate opensuse-15.5-amd64.json || exit /b 1
set PACKER_LOG=1
del /q e:\packer.log
set PACKER_LOG_PATH=e:/packer.log
\apps\BATS\packer.exe build -on-error=ask opensuse-15.5-amd64.json
