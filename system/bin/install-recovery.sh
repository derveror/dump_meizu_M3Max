#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:19366784:fa1bc4ef6d95bd99ad34858478db4efb3a373a94; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10396544:9cb3a4aed4f895d844480c5d247c46ad7e741317 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery fa1bc4ef6d95bd99ad34858478db4efb3a373a94 19366784 9cb3a4aed4f895d844480c5d247c46ad7e741317:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
