#!/bin/sh

export DISPLAY=:0
export XAUTHORITY=/home/tim/.Xauthority
qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock

