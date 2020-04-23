#!/bin/bash

# Install packages required for coc.nvim and installed language servers 

bash lang-servers/setup.sh
bash lang-servers/python-language-server.sh
bash lang-servers/clangd.sh
bash lang-servers/texlab.sh
## Install latest version of cmake
#apt purge -y --auto-remove cmake && \
#    wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add - && \
#    apt update && \
#    apt install -y  software-properties-common libeigen3-dev && \
#    apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main' &&\
#    apt update && \
#    apt install -y cmake && \
#    apt-get purge -y curl && \
#    apt-get autoremove -y && \
#    apt-get clean 
#
## add nodejs ppa 
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#sudo apt install -y 
#    clangd-9 \
#    texlive-latex-extra \
#    texlive-science \
#    nodejs \
#    yarn
#
#sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
#
## Install dependencies for latex language server
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
#~/.cargo/bin/cargo install --git https://github.com/latex-lsp/texlab.git
#
## Install dependencies for python language server 
#pip install python-language-server pyflakes


