#!/bin/bash

# Install generic packages on apt-get
bash apt-get.sh

# Install explicit packages with manual builds
bash install_custom_packages.sh

# Setup symlinks for dotfiles
bash dotfiles/setup.sh

# Install vim
bash vim/setup.sh
# Install spacemacs
# Install and symlink org files

# user input needed; all saved for the end
# install solarized...
# for vim: in .vimrc as plugin
# for bash
#./bash/gnome-terminal-colors-solarized/install.sh

# change default editor
#sudo update-alternatives --config editor
