#!/bin/bash

# Install Xfce and remove its default window manager
sudo apt-get -y install --no-install-recommends xfce4

# Install other necessary packages with recommended dependencies
sudo apt-get -y install nemo ranger xdg-user-dirs xdg-user-dirs-gtk
xdg-user-dirs-update
xdg-user-dirs-gtk-update
sudo apt-get -y install --no-install-recommends qt5-style-kvantum 

sudo apt-get -y install qt5ct dunst ninja-build yq jq libnotify-bin libnotify4 lxappearance cmake cmake-extras build-essential curl wget geany geany-plugins yad zenity dex vlc uxplay kitty alacritty lolcat lsd dunst python3-aalib
sudo apt-get -y install policykit-1-gnome git playerctl mpd ncmpcpp geany mpc picom xdotool feh ueberzug maim pamixer libwebp-dev xdg-user-dirs webp-pixbuf-loader fonts-jetbrains-mono gvfs gvfs-fuse gvfs-backends engrampa tint2
sudo apt-get -y install dmenu pulseaudio alsa-utils xdo jgmenu redshift xautolock fzf ytfzf yt-dlp gawk tumbler dex ntfs-3g network-manager network-manager-gnome pavucontrol plymouth plymouth-themes qt5ct adwaita-qt neofetch 
sudo apt-get -y install xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf libglib2.0-bin nala btop ncdu bat timeshift inotify-tools aptitude exa wmctrl acpid xclip scrot acpi playerctl mpdris2 libplayerctl-dev gir1.2-playerctl-2.0
sudo apt-get -y install mpv lxappearance gparted ripgrep converseen bc zip unzip cava avahi-daemon udisks2 udiskie figlet toilet toilet-fonts ascii lz4 jp2a txt2man vbindiff caca-utils libcaca-dev pkg-config
sudo apt-get -y install fd-find build-essential libxft-dev libharfbuzz-dev libgd-dev iwd python3-venv libnm-dev light zenity yad playerctl brightnessctl apt-utils dialog fonts-roboto libxinerama-dev libxinerama-dev xinput potrace 

# Enable 
systemctl --user enable mpd 
sudo systemctl enable acpid
sudo systemctl enable avahi-daemon



# Ensure the target directory exists
mkdir -p ~/.config/ncmpcpp

# Copy the example configuration files and bindings
cp /usr/share/doc/ncmpcpp/examples/config ~/.config/ncmpcpp/
cp /usr/share/doc/ncmpcpp/examples/bindings ~/.config/ncmpcpp/

echo "ncmpcpp config and bindings copied to ~/.config/ncmpcpp successfully."


# Copy configurations to ~/.config
sudo apt-get -y install rofi polybar
mkdir -p ~/.config/rofi ~/.config/polybar
rofi -dump-config > /home/$USER/.config/rofi/config.rasi
cp /etc/polybar/config.ini polybar
cp /etc/dunst/dunstrc dunst/
cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "MPD enabled successfully."

# Install deb-get and Deborah using deb-get
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
sudo deb-get install deborah
# Download and install Neovim
wget https://github.com/neovim/neovim-releases/releases/download/v0.10.1/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
rm nvim-linux64.deb
# greenclip
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip
sudo mv greenclip /usr/bin/
sudo chmod +x /usr/bin/greenclip
echo "Greenclip installed successfully."

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') 
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" 
tar xf lazygit.tar.gz
sudo mv lazygit /usr/local/bin/
rm lazygit.tar.gz
echo "Lazygit installed successfully."

# Add QT_QPA_PLATFORMTHEME to /etc/environment
sudo sh -c 'echo "QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment' 
echo "QT_QPA_PLATFORMTHEME set successfully."

# Set the Plymouth default theme to "spinner"
/usr/sbin/plymouth-set-default-theme -R spinner
echo "Plymouth default theme set to spinner successfully."

# networkmanager_dmenu
git clone https://github.com/firecat53/networkmanager-dmenu.git
cd networkmanager-dmenu 
chmod +x networkmanager_dmenu.desktop
sudo mv networkmanager_dmenu.desktop /usr/share/applications/
sudo mv networkmanager_dmenu /usr/bin/
echo "NetworkManager Dmenu installed successfully."
cd ..
rm -rf networkmanager-dmenu

# Remove xfwm4 (default Xfce window manager)
sudo apt-get remove --purge xfwm4 -y

# Clone the Picom repository and install Picom
git clone https://github.com/FT-Labs/picom
cd picom
meson setup --buildtype=release build
ninja -C build
sudo ninja -C build install
cd ..
rm -rf picom
cp /etc/xdg/picom.conf picom/

# Set Picom as the default compositor
echo "exec picom &" >> ~/.xinitrc

# Set the Windows key (Super key) to launch Rofi
echo "super + @space rofi -show drun" >> ~/.config/sxhkd/sxhkdrc

# Autostart Polybar
echo "exec --no-startup-id polybar example &" >> ~/.xinitrc
echo "Polybar will autostart on login."

echo "Setup completed successfully."
