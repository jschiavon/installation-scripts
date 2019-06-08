#! /bin/bash

sudo pacman -Syyu

yay -Syua

flatpak update

pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install --user -U
