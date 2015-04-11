#!/bin/bash

gap=16
# status_y= 50 `expr \`xwininfo -metric -root|sed -ne 's/.*geometry.*x\([0-9]*\)+.*/\1/p'\` - $gap`
# status_x= 250
# status_width= 820
# conky -c ~/.i3/dzconky.cfg | dzen2 -ta l -sa c -w $status_width -x $status_x -y $status_y -fg white -bg '#050505' -m -fn '-*-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*' || exit 1

# - bottom
# conky -c ~/.i3/dzconky.cfg | dzen2 -ta l -sa c -w 820 -x 250 -y 1024 -fg white -bg '#000000' -m -fn '-*-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*' || exit 1
# - top
conky -c ~/.i3/dzconky.cfg | dzen2 -ta l -sa c -w 820 -x 250 -y 0 -fg white -bg '#000000' -m -fn '-*-lucidatypewriter-medium-*-*-*-12-*-*-*-*-*-*-*' || exit 1

