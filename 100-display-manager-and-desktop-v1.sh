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

echo "################################################################"
echo "###      Preparing installation and Desktop Environment     ####"
echo "################################################################"
sudo pacman -Syyu --noconfirm

#installing display manager and desktop environment
sudo pacman -S sddm --noconfirm --needed
sudo pacman -S plasma --noconfirm --needed

#enabling displaymanager
sudo systemctl enable sddm.service -f
sudo systemctl set-default graphical.target

#enable NetworkManager service
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

# install flatpak and configure flathub repository
sudo pacman -S flatpak --noconfirm --needed
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Remove anything you do not like from the installed applications

sudo pacman -R oxygen discover

echo "Creating common folders in correct language"
xdg-user-dirs-update
xdg-user-dirs-update --force

echo "Creating private folders we use later"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
