#!/bin/bash

# sleep 3

ypos=`xrandr | grep -i primary | cut -d' ' -f4 | cut -d'x' -f2 | cut -d'+' -f1`
declare -i ypos
ypos=$ypos-14

echo $ypos

gap=16
# status_y= 50 `expr \`xwininfo -metric -root|sed -ne 's/.*geometry.*x\([0-9]*\)+.*/\1/p'\` - $gap`
# status_x= 250
# status_width= 820
# conky -c ~/.i3/dzconky.cfg | dzen2 -ta l -sa c -w $status_width -x $status_x -y $status_y -fg white -bg '#050505' -m -fn '-*-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*' || exit 1

# - floating mode
conky -c ~/.i3/scripts/dzconky.cfg | dzen2 -ta l -sa c "-x" 250 -y $ypos -fg white -bg '#000000' -m -fn '-*-monospace-medium-*-*-*-14-*-*-*-*-*-*-*' || exit 1
# - dock mode
# conky -c ~/.i3/scripts/dzconky.cfg | dzen2 -dock -ta l -sa c "-x" 0 -y 0 -fg white -bg '#000000' -m -fn '-*-monospace-medium-*-*-*-14-*-*-*-*-*-*-*' || exit 1

# FONT LIST CMD:  
