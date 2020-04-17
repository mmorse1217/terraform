#!/bin/bash
echo "Installing Dropbox..."
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
echo '[Desktop Entry]
Name=Dropbox
GenericName=File Synchronizer
Comment=Sync your files across computers and to the web
Exec=~/.dropbox-dist/dropboxd start -i
Terminal=false
Type=Application
Icon=dropbox
Categories=Network;FileTransfer;
StartupNotify=false' | cat - ~/.config/autostart > /tmp/out 
mv /tmp/out ~/.config/autostart 
