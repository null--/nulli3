#!/bin/bash

sleep 3

# ---- First time init ---- #
if ! [ -e ~/.i3/scripts/initialized ] 
then
    echo "DELETE THIS FILE TO RE-INITIALIZE nulli3" > ~/.i3/scripts/initialized

    # ---- Init ----
    # -- Set Wallpaper
    nitrogen --save --set-auto ~/.i3/wallpapers/anarchy-g.jpg
fi

