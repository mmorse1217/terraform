#!/bin/bash

echo "Installing Anki..."
wget https://github.com/ankitects/anki/releases/download/2.1.22/anki-2.1.22-linux-amd64.tar.bz2
tar xjf anki-2.1.22-linux-amd64.tar.bz2
cd anki-2.1.22-linux-amd64
sudo make install
cd ..
rm -rf anki-2.1.22-linux-amd64
rm -f anki-2.1.22-linux-amd64.tar.bz2

