#!/sbin/sh

hasfw=`lsusb|grep "0bdb"`

if [ -n hasfw ]
  then
    echo "Found Ericsson Card"
    echo "3g.module=f5521gw" >> /system/build.prop
    exit 0
fi

hasgobi=`lsusb|grep "0bdb"`

if [ -n hasgobi ]
  then
    echo "Found Gobi Card"
    echo "3g.module=gobi" >> /system/build.prop
    exit 0
fi

echo "No Card found"
exit 1


