#!/bin/bash

# Install packages required for coc.nvim and installed language servers 

# add nodejs ppa 
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y cmake \
    clangd-9 \
    texlive-latex-extra \
    nodejs \
    yarn

# Install dependencies for latex language server
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
~/.cargo/bin/cargo install --git https://github.com/latex-lsp/texlab.git
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100

# Install dependencies for python language server 
pip install python-language-server pyflakes
