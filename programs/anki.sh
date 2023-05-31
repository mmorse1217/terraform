#!/bin/bash

echo "Installing Anki..."
apt update 
apt install -y wget zstd make sudo --no-install-recommends
rm -rf /var/lib/apt/lists/*

echo "Downloading Anki..."
wget https://github.com/ankitects/anki/releases/download/2.1.64/anki-2.1.64-linux-qt6.tar.zst --no-check-certificate

echo "Extracting Anki..."
tar --use-compress-program=unzstd -xvf anki-2.1.64-linux-qt6.tar.zst
cd anki-2.1.64-linux-qt6

echo "Installing Anki..."
sudo make install
bash install

echo "Anki Clean up..."
cd ..
rm -rf anki-2.1.64-linux-qt6
rm -f anki-2.1.64-linux-qt6.tar.zst

