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

echo "Installing software from flatpak - flathub repo"

flatpak install --user -y flathub org.libreoffice.LibreOffice
flatpak install --user -y flathub org.inkscape.Inkscape
flatpak install --user -y flathub org.gimp.GIMP

flatpak install --user -y flathub com.visualstudio.code.oss
flatpak install --user -y flathub com.spotify.Client
flatpak install --user -y flathub com.discordapp.Discord
flatpak install --user -y flathub com.valvesoftware.Steam
flatpak install --user -y flathub com.elsevier.MendeleyDesktop
