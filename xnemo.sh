#!/bin/bash

# Install Nemo
sudo apt-get update
sudo apt-get install -y nemo

# Set Nemo as the default file manager
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# Replace Thunar with Nemo as the default file manager
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client0_Command -s "nemo-desktop"
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client0_RestartCommand -s "nemo-desktop"
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client1_Command -s "nemo"
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client1_RestartCommand -s "nemo"

# Stop Thunar from managing the desktop
xfconf-query -c xfce4-desktop -p /desktop-icons/style -s "None"

# Set Nemo to manage the desktop
nemo-desktop &

# Optionally, stop Thunar from running in the background
pkill thunar

# Create autostart entry for Nemo
mkdir -p ~/.config/autostart
cat > ~/.config/autostart/nemo-desktop-autostart.desktop <<EOF
[Desktop Entry]
Type=Application
Exec=nemo-desktop
Hidden=false
X-GNOME-Autostart-enabled=true
Name=Nemo Desktop
Comment=Start Nemo to manage desktop icons
EOF

echo "Nemo has been integrated with XFCE."
