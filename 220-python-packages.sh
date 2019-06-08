#!/bin/bash
set -e
echo "Installing python packages with pip"

sudo pacman -S --noconfirm --needed python-pip

# Base numerical and statistical packages
pip install --user numpy scipy scikit-learn pandas hdbscan statsmodels

# Utilities
pip install --user joblib tqdm ipython jupyter

# Plotting tools
pip install --user matplotlib seaborn bokeh

