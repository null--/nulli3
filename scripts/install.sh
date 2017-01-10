#!/bin/bash
cd ~/.i3/

sudo rm /usr/bin/nulli3*
sudo rm /usr/share/applications/nulli3*
sudo rm /usr/share/xsessions/nulli3*
sudo rm /usr/share/mate/wm-properties/nulli3*

sudo cp -rvf nulli3-dep/* /

chmod 755 ~/.i3/scripts/*.sh
sudo chmod 755 /usr/bin/nulli3*
sudo chmod 644 /usr/share/xsessions/nulli3*
sudo chmod 644 /usr/share/applications/nulli3*
sudo chmod 644 /usr/share/mate/wm-properties/nulli3*

gsettings set org.mate.background show-desktop-icons false
gsettings set org.mate.session.required-components windowmanager nulli3-mate

rm ~/.xsession
ln -s ~/.i3/scripts/xsession ~/.xsession
rm ~/.Xresources
ln -s ~/.i3/scripts/Xresources ~/.Xresources

echo "------------------------------ NOTE ------------------------------"
echo "To uninstall don't forget to:"
echo "# gsettings set org.mate.session.required-components windowmanager marco"
echo "# gsettings set org.mate.background show-desktop-icons true"

echo "------------------------------ DONE! ------------------------------"
echo "--> Logout and login to nulli3: mate"
echo "             or"
echo '--> Logout to a tty and run "startx" (to start nulli3 in the "pure" mode)'
