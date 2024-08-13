#!/bin/bash

git clone https://github.com/arcolinux/a-candy-beauty-icon-theme.git /tmp/candy

mkdir $HOME/.icons
mv /tmp/candy/usr/share/icons/* $HOME/.icons/

echo "################################################################"
echo "###################    icons installed     ######################"
echo "################################################################"
