#!/bin/bash
# Taken more or less from https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
mkdir -p ~/.vim/build
cd ~/.vim/build
sudo apt install -y --force-yes \
    libncurses5-dev \
    libgnome2-dev \
    libgnomeui-dev \
    libgtk2.0-dev \
    libatk1.0-dev \
    libbonoboui2-dev \
    libcairo2-dev \
    libx11-dev \
    libxpm-dev \
    libxt-dev \
    python-dev \
    python3-dev \
    git \
    checkinstall


# remove system vim
sudo apt remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox

# clone working vim
git clone https://github.com/vim/vim.git .

# configure and compile vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=yes \
            --enable-luainterp=yes \
            --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu/ \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

sudo make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make install
# verify installation and update user preferences to use vim
sudo checkinstall
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1
sudo update-alternatives --set vim /usr/bin/vim
