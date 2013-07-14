Based on best features of Gnome and KDE

Basic setups:
      0- 101:
         # cp -r <path-to-null-i3-git-clone>/i3 ~/
         # mv ~/.xsession ~/.xsession.old
         # ln -s ~/i3/xsession ~/.xsession
          
      1- install dependencies:
         # take a look inside i3/APTGET file

      2- lxpanel setup:
         # mv ~/.config/lxpanle ~/.config/lxpanel.old
         # cp -r ~/i3/lxpanel  ~/.config/

      3- Set wallpaper:
         # nitrogen
         and preferences>add ~/i3/wallpaper to your paths
         pick a wallpaper and <apply>

      4- change statusbar by editing:
         ~/i3/status.sh

Keybindings:
    take a look inside ~/i3/config

Add/Remove Keyboard Layout:
    change this line:
    exec --no-startup-id setxkbmap -rules evdev -model pc105 -layout "us,ir" -option "grp:alt_shift_toggle"

    inside ~/i3/config
    
pcmanfm mount failiure:
	sudo nano /usr/share/polkit-1/actions/org.freedesktop.udisks.policy
	Find the id:
	org.freedesktop.devicekit.disks.filesystem-mount-system-internal
	Look for the line
	<allow_active>auth_admin_keep</allow_active>
	and replace it with
	<allow_active>yes</allow_active>
