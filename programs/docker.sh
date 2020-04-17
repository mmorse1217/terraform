#!/bin/bash

# Install docker via apt-get

echo "Installing Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# allow docker commands to be run without root privileges
id -g docker >/dev/null 2>&1 || sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
