#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install chromium-browser unclutter lightdm -y
touch ~/.xsession
echo"xset s off
xset -dpms
xset s noblank
sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium-browser Default/Preferences
chromium-browser --noerrdialogs --kiosk ~/pi-monitor/spacedesk-offline/spacedesk.html --incognito --disable-translate --window-size=1024,768 --window-position=0,0" >> ~/.xsession
