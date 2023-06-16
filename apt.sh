#!/bin/bash
# General tools
# virtualization and containers.
# fast fuzzy find via Ctrl-P in vim
# packages to allow apt-get to install things over https...
# Dropbox
sudo apt update

sudo apt install -y \
        build-essential \
	    dconf-cli\
        emacs \
        htop \
        git \
        lm-sensors \
        okular \
        openssh-client \
        openssh-server \
        openconnect \
        tmux \
        thunderbird \
        docker.io \
        silversearcher-ag \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        indicator-cpufreq \
        software-properties-common \
        vlc

sudo apt upgrade -y
