#!/bin/bash
echo "Installing Spacemacs..."
echo "Installing dependencies..."

apt update 
apt install -y ca-certificates emacs git --no-install-recommends
rm -rf /var/lib/apt/lists/*

if ! git ls-remote ~/.emacs.d -q 
then

    echo "Backing up .emacs.d and .emacs..."
    cd ~
    if [ -d .emacs.d ]; then
        mv .emacs.d .emacs.d.bak
    fi

    if [ -d .emacs ]; then
        mv .emacs .emacs.bak
    fi

    echo "Installing...."
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d 
fi
