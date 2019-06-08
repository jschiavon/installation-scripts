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

echo "Installing python packages with pip"

sudo pacman -S --noconfirm --needed python-pip
sudo pacman -S --noconfirm --needed r

# Base numerical and data management packages
pip install --user numpy scipy pandas

# Statistics and Machine learning
pip install --user scikit-learn hdbscan statsmodels

# Parallel computing - utilities - notebook
pip install --user joblib tqdm ipython jupyter jupyterthemes

# Plotting tools
pip install --user matplotlib seaborn bokeh

# Preparing R environment
echo "cat(\"Setting Padova repository\")\nr = getOption(\"repos\")\nr[\"CRAN\"] = \"https://cran.stat.unipd.it/\"\noptions(repos = r)\nrm(r)" > ~/.Rprofile

# Installing R packages
utility_scripts/rpkginstall ggplot2
utility_scripts/rpkginstall dplyr
utility_scripts/rpkginstall rstan
utility_scripts/rpkginstall IRkernel

# Configuring Jupyter to use R kernel
echo "IRkernel::installspec()" | R --no-save
