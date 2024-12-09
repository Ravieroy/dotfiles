#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $(dirname "$0")/config.ini &

##--- Uncomment this when you connect the external monitor via Display Port
# if [[ $(xrandr -q | grep 'DisplayPort-1') ]]; then
# 	polybar external -c $(dirname $0)/config.ini &
# fi

##--- Uncomment this when you connect the vertical monitor into HDMI slot
# if [[ $(xrandr -q | grep 'HDMI-A-0') ]]; then
# 	polybar vertical -c $(dirname $0)/config.ini &
# fi

##--- Uncomment this when you only use the external monitor in the HDMI slot
if [[ $(xrandr -q | grep 'HDMI-A-0') ]]; then
	polybar external -c $(dirname $0)/config.ini &
fi
