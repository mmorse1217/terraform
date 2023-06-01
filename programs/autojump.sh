#!/bin/bash
# Install autojump
bash programs/python.sh
echo "Installing autojump..."
apt update
apt install -y git ca-certificates --no-install-recommends
rm -rf /var/lib/apt/lists/*


git clone https://github.com/wting/autojump.git
cd autojump
SHELL=bash ./install.py

echo '[[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh' | cat - ~/.bashrc > /tmp/out 
mv /tmp/out ~/.bashrc 
cd ../../

