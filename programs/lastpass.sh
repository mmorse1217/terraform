#!/bin/bash

# Install dependencies
apt-get --no-install-recommends -yqq install \
  bash-completion \
  build-essential \
  cmake \
  libcurl4  \
  libcurl4-openssl-dev  \
  libssl-dev  \
  libxml2 \
  libxml2-dev  \
  libssl1.1 \
  pkg-config \
  ca-certificates \
  xclip

# Download, build and install
git clone https://github.com/lastpass/lastpass-cli.git
cd lastpass-cli
make
make install
rm -rf lastpass-cli
