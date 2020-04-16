#!/bin/bash
apt install -y --force-yes \
# General tools
        build-essential \
        cmake3 \
        emacs \
        git \
        openssh-client \
        openssh-server \
        tmux \
        thunderbird
# virtualization and containers.
        virtualbox \
        docker.io \
# fast fuzzy find via Ctrl-P in vim
        silversearcher-ag \
# poackages to allow apt-get to install things over https...
        apt-transport-https \
        ca-certificates \ 
        curl \ 
        gnupg-agent \
        software-properties-common \
# Dropbox
        dropbox \
        nautilus-dropbox \

