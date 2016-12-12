#!/bin/bash

# ---- First time init ---- #
if ! [ -e ~/.i3/scripts/initialized ] 
then
    echo "DELETE THIS FILE TO RE-INITIALIZE nulli3" > ~/.i3/scripts/initialized

    # ---- Init ----
    # -- Set Wallpaper
    nitrogen --save --set-auto ~/.i3/wallpapers/anarchy-g.jpg
fi

# Floating "desktop" windows bug
sleep 1
i3-msg "workspace 1; layout tabbed"
i3-msg "workspace 1"

