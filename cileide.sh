#!/bin/bash
# weston &
# sleep 5s # could be less
#export WAYLAND_DISPLAY=wayland-0
#export QT_QPA_PLATFORM=minimal
#export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/plugins/platforms
# echo shtc1 0x70 > /sys/bus/i2c/devices/i2c-1/new_device
export QT_QPA_PLATFORM=wayland
export DISPLAY=0
export XDG_RUNTIME_DIR=/run/user/0

export QT_PLUGIN_PATH=/usr/lib/plugins
export QT_QPA_FONTDIR=/usr/share/fonts/truetype
#export QT_DEBUG_PLUGINS=1
python3 /usr/share/cileide/src/
