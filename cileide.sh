#!/bin/bash
# weston &
# sleep 5s # could be less
#export WAYLAND_DISPLAY=wayland-0
#export DISPLAY=:1.0
#export QT_QPA_PLATFORM=minimal
#export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/plugins/platforms
export QT_QPA_PLATFORM=wayland


export QT_PLUGIN_PATH=/usr/lib/plugins
export QT_QPA_FONTDIR=/usr/share/fonts/truetype
#export QT_DEBUG_PLUGINS=1
python3 /usr/share/cileide/src/
