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

# software from standard Arch Linux repositories
# Core, Extra, Community, Multilib repositories

echo "Installing category Accessories"
sudo pacman -S --noconfirm --needed dolphin dolphin-plugins
sudo pacman -S --noconfirm --needed konsole yakuake
sudo pacman -S --noconfirm --needed latte-dock
sudo pacman -S --noconfirm --needed ark
sudo pacman -S --noconfirm --needed kalarm
sudo pacman -S --noconfirm --needed kate kcalc
sudo pacman -S --noconfirm --needed redshift
sudo pacman -S --noconfirm --needed kaccounts-integration kaccounts-providers kaddressbook kontact korganizer
sudo pacman -S --noconfirm --needed kcron
sudo pacman -S --noconfirm --needed kio-extras kio-gdrive
sudo pacman -S --noconfirm --needed kdialog kfind
sudo pacman -S --noconfirm --needed kwalletmanager

echo "Installing category Development"
sudo pacman -S --noconfirm --needed gcc gcc-fortran
sudo pacman -S --noconfirm --needed python r

echo "Installing category Education"

echo "Installing category Games"

echo "Installing category Graphics"
sudo pacman -S --noconfirm --needed gwenview
sudo pacman -S --noconfirm --needed okular

echo "Installing category Internet"
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed thunderbird
sudo pacman -S --noconfirm --needed qbittorrent

echo "Installing category Multimedia"
sudo pacman -S --noconfirm --needed vlc

echo "Installing category Office"
sudo pacman -S --noconfirm --needed texlive-most kile

echo "Installing category Other"

echo "Installing category System"
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed numlockx
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed spectacle
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed zsh zsh-completions zsh-syntax-highlighting
sudo pacman -S --noconfirm --needed xdotool

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip

###############################################################################################


echo "################################################################"
echo "#### Software from standard Arch Linux Repo installed  #########"
echo "################################################################"
