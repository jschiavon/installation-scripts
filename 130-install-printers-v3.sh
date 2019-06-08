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


sudo pacman -S --noconfirm --needed cups cups-pdf
sudo pacman -S --noconfirm --needed print-manager

sudo pacman -S ghostscript gsfonts gutenprint cups-filters --noconfirm --needed
sudo pacman -S --noconfirm --needed foomatic-db foomatic-db-engine foomatic-db-ppds
sudo pacman -S libcups --noconfirm --needed
sudo pacman -S hplip --noconfirm --needed
sudo pacman -S --noconfirm --needed foomatic-db-gutenprint-ppds

sudo systemctl enable org.cups.cupsd.service

echo "After rebooting it will work"

echo "################################################################"
echo "#########   printer management software installed     ##########"
echo "################################################################"
