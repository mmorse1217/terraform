#!/bin/bash

# Remaps CapsLock to Left Control, swap Left/Right Alt and Control 
# Runs on startup
MY_PATH="`dirname \"$0\"`"
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"
chmod +x keybinding.desktop
echo "symlinking .keybinding startup script..."
ln -sf $MY_PATH/keybinding.desktop ~/.config/autostart/keybinding.desktop 
