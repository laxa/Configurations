#!/bin/bash
# launch this script as your user and not root
set -x

cp emacs ~/.emacs
cp bashrc ~/.bashrc
cp gitconfig ~/.gitconfig
cp keyboardshortcut.xml ~/.gconf/apps/gnome-terminal/keybindings/%gconf.xml
cp terminal.xml ~/.gconf/apps/gnome-terminal/keybindings/%gconf.xml
cp background.jpg ~/Documents