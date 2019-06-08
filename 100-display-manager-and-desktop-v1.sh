#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"
sudo pacman -R xcursor-breeze --noconfirm

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
#sudo pacman -S --noconfirm --needed lightdm
#sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
#sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git
#installing desktop environment
sudo pacman -S sddm --noconfirm --needed
sudo pacman -S dolphin konsole --noconfirm --needed
sudo pacman -S plasma --noconfirm --needed

#enabling displaymanager or login manager
sudo systemctl enable sddm.service -f
sudo systemctl set-default graphical.target

# install flatpak and configure flathub repository
sudo pacman -S flatpak --noconfirm --needed
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Remove anything you do not like from the installed applications

#sudo pacman -R ...
