#!/bin/bash
echo "Installing OpenRazer..."
sudo add-apt-repository -y ppa:openrazer/stable
sudo apt update
sudo apt install -y openrazer-meta
sudo gpasswd -a ${USER} plugdev
