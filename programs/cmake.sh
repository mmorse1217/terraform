#!/bin/bash
# Install the latest version of cmake

echo "Installing latest version of CMake..."
apt update 
apt install -y wget gnupg2 software-properties-common lsb-release --no-install-recommends
#wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | \
#    gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add - 
apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"

apt update
apt install -y cmake extra-cmake-modules --no-install-recommends
apt-get purge -y curl
apt-get autoremove -y
apt-get clean 
rm -rf /var/lib/apt/lists/*
