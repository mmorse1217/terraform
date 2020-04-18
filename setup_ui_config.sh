#!/bin/bash

# Remaps CapsLock to Left Control, swap Left/Right Alt and Control 
# Runs on startup
chmod +x keybinding.desktop
ln -sf ~/.config/autostart/keybinding.desktop
