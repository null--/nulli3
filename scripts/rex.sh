#!/bin/bash

# Touchscreen bugfix when using multiple displays

# you need xinput --list, xrandr
xinput --map-to-output $(xinput list --id-only "ELAN Touchscreen") eDP-1
xinput --map-to-output $(xinput list --id-only "ETPS/2 Elantech Touchpad") eDP-1
# xrandr --output HDMI1 --right-of eDP1 --preferred
# xrandr --output eDP1 --preferred --primary
