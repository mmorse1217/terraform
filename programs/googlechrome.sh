#!/bin/bash
# Install google chrome
echo "Installing Google Chrome..."
apt update 
apt install -y ca-certificates wget --no-install-recommends

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb

rm -rf /var/lib/apt/lists/*
