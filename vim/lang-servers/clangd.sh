#!/bin/bash

sudo apt install -y clangd-9 
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
