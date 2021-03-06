#!/bin/bash

set -e

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y python3-gi python3-gi-cairo python3-gi-dbg libdbus-1-dev
sudo apt-get install -y curl \
						wget \
						python3-pip \
						python3 \
						build-essential \
						libssl-dev \
						libffi-dev \
						python3-dev \
						python3-venv \
						python3-dbus \
						dbus \
						neofetch \
						libfuse2
sudo pip3 install autokey
						
git clone https://github.com/nagygergo/jetbrains-toolbox-install.git

cd jetbrains-toolbox-install
./jetbrains-toolbox.sh

jetbrains-toolbox

#qtile

pip3 install xcffib 
pip3 install --no-cache-dir cairocffi
pip3 install qtile

neofetch
