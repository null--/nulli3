#!/bin/sh
gconftool-2 --type=string --set /desktop/gnome/session/required_components/panel '/bin/true'
sleep 1
gnome-session &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
gsettings-data-convert &
/usr/lib/notification-daemon/notification-daemon &
gnome-sound-applet &

