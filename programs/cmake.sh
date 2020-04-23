#!/bin/bash
# Install the latest version of cmake

echo "Installing latest version of CMake..."
sudo apt purge -y --auto-remove cmake && \
    wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | apt-key add - && \
    sudo apt update && \
    sudo apt install -y  software-properties-common && \
    sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main' &&\
    sudo apt update && \
    sudo apt install -y cmake extra-cmake-modules && \
    sudo apt-get purge -y curl && \
    sudo apt-get autoremove -y && \
    sudo apt-get clean 
