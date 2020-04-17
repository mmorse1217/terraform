#!/bin/bash
# General tools
# virtualization and containers.
# fast fuzzy find via Ctrl-P in vim
# packages to allow apt-get to install things over https...
# Dropbox
sudo apt update

sudo apt install -y \
        build-essential \
        cmake \
	    dconf-cli\
        emacs \
        git \
        okular \
        openssh-client \
        openssh-server \
        tmux \
        thunderbird \
        virtualbox \
        docker.io \
        silversearcher-ag \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        vlc

sudo apt upgrade -y
