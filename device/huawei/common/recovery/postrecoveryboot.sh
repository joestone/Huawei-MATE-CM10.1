#!/sbin/busybox sh

SHARE="/data/share/0";

if [[ -d ${SHARE} && ! -L ${SHARE} ]]; then
    rm -rf /data/share/0/TWRP
    cp -rf /data/share/0/* /data/media/0
    rm -rf /data/share
fi
