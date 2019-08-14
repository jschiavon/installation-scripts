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

pip install --user pipupgrade

# Base numerical and data management packages
pip install --user numpy scipy pandas

# Statistics and Machine learning
pip install --user scikit-learn hdbscan statsmodels pystan pymc3

# Parallel computing - utilities - notebook
pip install --user joblib tqdm ipython jupyter jupyterthemes

# Plotting tools
pip install --user matplotlib seaborn bokeh

# Preparing R environment
echo 'cat("Setting Padova repository\n")' > ~/.Rprofile
echo 'r = getOption("repos")' >> ~/.Rprofile
echo 'r["CRAN"] = "https://cran.stat.unipd.it/"' >> ~/.Rprofile
echo 'options(repos = r)' >> ~/.Rprofile
echo 'rm(r)' >> ~/.Rprofile

export R_LIBS_USER=~/.local/lib/R/3.6

# Installing R packages
utility_scripts/rpkginstall.sh ggplot2
utility_scripts/rpkginstall.sh dplyr
utility_scripts/rpkginstall.sh rstan
utility_scripts/rpkginstall.sh IRkernel

# Configuring Jupyter to use R kernel
echo "IRkernel::installspec()" | R --no-save
