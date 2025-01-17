#!/usr/bin/env bash

# Enables tap to click
xinput set-prop 11 "libinput Tapping Ena
bled" 1

# Terminate already running bar instances
polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar --config=/home/daniel/.config/i3/polybar/config.ini main 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."