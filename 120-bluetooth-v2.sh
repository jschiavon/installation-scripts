#!/bin/bash
set -e
##################################################################################################################
# Author	:	Jacopo Schiavon
# Website	:	https://www.github.com/jschiavon
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# installing bluetooth software

sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
#sudo pacman -S --noconfirm --needed bluez-firmware
sudo pacman -S --noconfirm --needed bluedevil

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

echo "reboot your system then ..."
echo "set with bluetooth icon in bottom right corner"
echo "change to have a2dp if needed"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
