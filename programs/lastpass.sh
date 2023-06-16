#!/bin/bash

echo "Installing Lastpass..."
# Install dependencies
apt update
apt --no-install-recommends -yqq install \
  bash-completion \
  build-essential \
  cmake \
  git \
  libcurl4  \
  libcurl4-openssl-dev  \
  libssl-dev  \
  libxml2 \
  libxml2-dev  \
  pkg-config \
  ca-certificates \
  xclip
rm -rf /var/lib/apt/lists/*

# Download, build and install
git clone https://github.com/lastpass/lastpass-cli.git
cd lastpass-cli
make
make install
cd ..

rm -rf lastpass-cli
