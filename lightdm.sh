#!/bin/bash

# Update package list
sudo apt-get update

# Install LightDM and greeters with no extra dependencies
sudo apt-get install -y lightdm
sudo apt-get install -y lightdm-gtk-greeter
sudo apt-get install -y slick-greeter

# Enable LightDM to start on boot
sudo systemctl enable lightdm

# Set slick-greeter as the default greeter
sudo bash -c 'echo "[Seat:*]" > /etc/lightdm/lightdm.conf.d/50-ubuntu.conf'
sudo bash -c 'echo "greeter-session=slick-greeter" >> /etc/lightdm/lightdm.conf.d/50-ubuntu.conf'

# Start LightDM immediately (optional, if you want to start it now without reboot)
sudo systemctl start lightdm

echo "LightDM and slick-greeter have been installed and configured as the default greeter."
