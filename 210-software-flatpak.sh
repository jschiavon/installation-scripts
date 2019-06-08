#!/bin/bash
set -e
echo "Installing software from flatpak - flathub repo"

flatpak install --user -y flathub org.libreoffice.LibreOffice
flatpak install --user -y flathub org.inkscape.Inkscape
flatpak install --user -y flathub org.gimp.GIMP
flatpak install --user -y flathub org.texstudio.TeXstudio

flatpak install --user -y flathub com.visualstudio.code.oss
flatpak install --user -y flathub com.spotify.Client
flatpak install --user -y flathub com.discordapp.Discord
flatpak install --user -y flathub com.valvesoftware.Steam
flatpak install --user -y flathub com.elsevier.MendeleyDesktop
