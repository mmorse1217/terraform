#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
mkdir -p ~/.config/autostart

# Install generic packages on apt-get
bash apt.sh

# Setup symlinks for dotfiles
bash dotfiles/setup.sh

# Install explicit packages with manual builds
bash install_custom_packages.sh

bash setup_ui_config.sh
# All the following commands require user input
# Install solarized theme for bash (requires GNOME profile selection)
bash gnome-terminal-colors-solarized/install.sh --scheme=dark --install-dircolors

# change default editor
sudo update-alternatives --config editor

# Install VPN (needs PriavteInternetAccess username)
bash programs/pia.sh
# Install and symlink org files (needs github password)

sudo apt autoremove
sudo apt --fix-broken install
