#!/bin/bash
cd ~/.i3/

sudo rm /usr/bin/nulli3*
sudo rm /usr/share/applications/nulli3*
sudo rm /usr/share/xsessions/nulli3*
sudo rm /usr/share/applications/nulli3*

sudo cp -r nulli3-dep/usr/* /usr/

chmod 755 ~/.i3/scripts/*.sh
sudo chmod 755 /usr/bin/nulli3-mate
sudo chmod 644 /usr/share/xsessions/nulli3mate.desktop

ln -s ~/.i3/scripts/xsession .xsession

echo "------------------------------ DONE! ------------------------------"
echo "--> Logout and login to nulli3: mate"
echo "             or"
echo '--> Logout to a tty and run "startx" (to start nulli3 in the "pure" mode)'

