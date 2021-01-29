#!/bin/bash

echo "====== Start installing custom terminal_theme"

PROJECT_URL="https://git.dafu2020.xyz:7068/dafu/Gogh.git"

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
    git clone $PROJECT_URL gogh
    cd gogh/themes
fi

# necessary on ubuntu
export TERMINAL=gnome-terminal

# install themes
./earthsong.sh

echo "====== Install custom terminal_theme successfully"
