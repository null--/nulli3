#!/bin/bash

# ---- First time init ---- #
if ! [ -e ~/.i3/initialized ] 
then
    echo "DELETE THIS FILE TO RE-INITIALIZE nulli3" > ~/.i3/initialized
    
    # ---- Init ----
    # -- Set Wallpaper
    nitrogen --save --set-auto ~/.i3/wallpaper/anarchy-g.jpg
fi

