#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=HDMI-0 polybar right &
MONITOR=DP-1 polybar left &
# MONITOR=DVI-I-1 polybar bar &

echo "Bars launched..."
