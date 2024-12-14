#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:11514768:5034316f1d00d8ff7bb383585cd900f7c9457ebc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:9528208:b46557f7cfce608ba6ab4a8f99d31e8bea50ef0d EMMC:/dev/block/platform/bootdevice/by-name/recovery 5034316f1d00d8ff7bb383585cd900f7c9457ebc 11514768 b46557f7cfce608ba6ab4a8f99d31e8bea50ef0d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
