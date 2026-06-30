#!/system/bin/sh
# Detect the first available USB Device Controller (UDC) and expose its name
# via sys.usb.controller so the configfs gadget (mtp,adb) can bind to it.
for d in /sys/class/udc/*; do
    [ -e "$d" ] || continue
    name="${d##*/}"
    [ -n "$name" ] && setprop sys.usb.controller "$name" && break
done
