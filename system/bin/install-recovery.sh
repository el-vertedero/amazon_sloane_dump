#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:16834560:d5b55995102ef4a527a59e91825f3b21f62a21da; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:16029696:38d78dcd5f7f7b032a6d57ba4aa12675e338692f EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery d5b55995102ef4a527a59e91825f3b21f62a21da 16834560 38d78dcd5f7f7b032a6d57ba4aa12675e338692f:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
