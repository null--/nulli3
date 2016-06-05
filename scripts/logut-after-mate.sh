#!/bin/bash

sleep 10

while ps -C i3 > /dev/null ; :
do
	if ! ps -C mate-session > /dev/null ; then
		i3-msg exit
	fi
	echo "shit"
	sleep 1
done
