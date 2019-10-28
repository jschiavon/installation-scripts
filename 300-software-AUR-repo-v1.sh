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

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/

#giving tmp folder extra gb in order not to run out of disk space while installing software
#only if you run into issues with that
#sudo mount -o remount,size=5G,noatime /tmp

echo "Installing yay AUR helper"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..
rm -rf yay

echo "yay AUR helper installed"


echo "Installing category Accessories"

sh utility_scripts/install-conky-lua-archers-v*.sh

echo "Installing category Development"


echo "Installing category Education"


echo "Installing category Games"


echo "Installing category Graphics"


echo "Installing category Internet"


echo "Installing category Multimedia"


echo "Installing category Office"


echo "Installing category Other"


echo "Installing category System"

# these come always last

sh utility_scripts/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "####        Software from AUR Repository installed        ######"
echo "################################################################"
