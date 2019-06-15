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
pkg=${1}

function help {
  echo "Usage: $(basename $0) <package name>"
  exit 1
}

[ -z ${pkg} ] && help

REXEC=$(which R)

if [ -z ${REXEC} ]; then
  echo "R not found, please ensure R is available and try again."
  exit 1
fi

[ -d $HOME"/.local/lib/R/3.6" ] || mkdir -p $HOME"/.local/lib/R/3.6"

echo "install.packages(\"${pkg}\", lib=\"~/.local/lib/R/3.6\")" | R --no-save
