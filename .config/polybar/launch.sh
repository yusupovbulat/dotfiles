#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bar &

desktop=$(echo $DESKTOP_SESSION)

case $desktop in
    i3)
    if type "xrandr" > /dev/null; then
        for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
            MONITOR=$m polybar --reload mainbar-i3 -c ~/.config/polybar/config &
        done
    else
        polybar --reload mainbar-i3 -c ~/.config/polybar/config &
    fi
esac
