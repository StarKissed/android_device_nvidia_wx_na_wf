if cat /etc/issue | grep Ubuntu; then
    BUILDSTRUCT=linux
else
    BUILDSTRUCT=darwin
fi

$BUILDSTRUCT/./mkbootfs ramdisk-recovery | gzip > ramdisk-recovery.cpio.gz
$BUILDSTRUCT/./mkbootimg --cmdline 'androidboot.selinux=permissive' --kernel kernel --ramdisk ramdisk-recovery.cpio.gz -o recovery.img --base 0x10000000 --pagesize 2048 --ramdisk_offset 0x11000000 --tags_offset 0x10f00000