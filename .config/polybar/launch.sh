#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $(dirname "$0")/config.ini &

if [[ $(xrandr -q | grep 'DP-1') ]]; then
	polybar external -c $(dirname $0)/config.ini &
fi

if [[ $(xrandr -q | grep 'HDMI-A-0') ]]; then
	polybar vertical -c $(dirname $0)/config.ini &
fi
