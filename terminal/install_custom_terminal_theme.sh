#!/bin/bash

echo "====== Start installing custom terminal_theme"

# Pre-Install
echo "====== Pre-Install packages"
sudo apt-get install -y dconf-cli uuid-runtime

# clone the repo into "$(pwd)/gogh"
if [ -d "$(pwd)/gogh" ];
then
    echo "====== gogh already exists, update it"
    cd gogh/themes
    git pull
else
    echo "====== Clone gogh repo"
    git clone ssh://git@git.dafu2020.xyz:10103/dafu/Gogh.git gogh
    cd gogh/themes
fi

# necessary on ubuntu
export TERMINAL=gnome-terminal

# install themes
./earthsong.sh

echo "====== Install custom terminal_theme successfully"
