#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime  
sudo apt-get install -y tzdata 
dpkg-reconfigure --frontend noninteractive tzdata   
sudo apt install -y 
    texlive-latex-extra \
    texlive-science \
    curl

# Install dependencies for latex language server
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
~/.cargo/bin/cargo install --git https://github.com/latex-lsp/texlab.git

