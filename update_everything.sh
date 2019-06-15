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

pakku -Syyu

flatpak update

pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install --user -U
