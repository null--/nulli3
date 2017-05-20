#!/bin/bash

#Source: https://askubuntu.com/questions/558280/changing-colour-of-text-and-background-of-terminal

for((i=16; i<256; i++)); do
    printf "\e[48;5;${i}m%03d" $i;
    printf '\e[0m';
    [ ! $((($i - 15) % 6)) -eq 0 ] && printf ' ' || printf '\n'
done

# printf '\e[<fg_bg>;5;<ANSI_color_code>m'
# printf '\e[38;5;196m Foreground color: red\n'
# printf '\e[48;5;0m Background color: black\n'
