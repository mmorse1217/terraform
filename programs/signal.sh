#!/bin/bash
wget -O- https://updates.signal.org/desktop/apt/keys.asc |\
  apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" |\
tee -a /etc/apt/sources.list.d/signal-xenial.list
apt update && apt install -y signal-desktop

