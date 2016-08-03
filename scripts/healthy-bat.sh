#!/bin/bash

# Based on: How to Prolong Lithium-based Batteries
# REF: http://batteryuniversity.com/learn/article/how_to_prolong_lithium_based_batteries

UP="80"
DOWN="40"

LOW=false
HIGH=false

while true
do
    sleep 30

    BAT=`upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -i perc | cut -d':' -f2 | tr -d '[[:space:]]' | cut -d '%' -f1`
    echo $BAT

    if ([ $BAT -gt $UP ] && [ $HIGH == false ]); then
        HIGH=true
        LOW=false
        notify-send -u "critical" "nulli3" "Your battery is above ${UP}%, For a healty battery, please unplug your charger!" -t 5000
    fi
    if ([ $BAT -lt $DOWN ] && [ $LOW == false ]); then
        LOW=true
        HIGH=false
        notify-send -u "critical" "nulli3" "Your battery is below ${DOWN}%, For a healty battery, please plug in your charger!" -t 5000
    fi
done
