#!/bin/bash
# launch this script as your user and not root
set -x

cp emacs ~/.emacs
cp bashrc ~/.bashrc
cp gitconfig ~/.gitconfig
cp keyboardshortcut.xml ~/.gconf/apps/gnome-terminal/keybindings/%gconf.xml
cp terminal.xml ~/.gconf/apps/gnome-terminal/profiles/Default/%gconf.xml
cp last-edited.xml ~/.config/gnome-control-center/backgrounds/
cp background.jpg ~/Documents/
cp screenrc ~/.screenrc
cp user ~/.config/dconf/user
