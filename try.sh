#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt-get update

# Install libraries and tools
echo "Installing libraries and tools..."
sudo apt-get -y install \
    libxcb-damage0 \
    libxcb-damage0-dev \
    shadowsocks-libev \
    libx11-xcb-xcb1 \
    libx11-xcb-dev \
    libev4 \
    libxcb-sync1 \
    libxcb-sync-dev \
    libxcb-xinerama0 \
    libqt5x11extras5 \
    libqt5dbus5 \
    libqt5widgets5 \
    libqt5network5 \
    libqt5gui5 \
    libqt5core5a \
    libdouble-conversion1 \
    libxcb-xinerama0 \
    libxcb-composite0 \
    libconfig-dev \
    libdbus-1-dev \
    libegl-dev \
    libev-dev \
    libgl-dev \
    libepoxy-dev \
    libpcre2-dev \
    libpixman-1-dev \
    libx11-xcb-dev \
    libxcb1-dev \
    libxcb-composite0-dev \
    libxcb-damage0-dev \
    libxcb-dpms0-dev \
    libxcb-glx0-dev \
    libxcb-image0-dev \
    libxcb-present-dev \
    libxcb-randr0-dev \
    libxcb-render0-dev \
    libxcb-render-util0-dev \
    libxcb-shape0-dev \
    libxcb-util-dev \
    libxcb-xfixes0-dev \
    libxext-dev \
    meson \
    ninja-build \
    uthash-dev \
    xclip \
    xdotool \
    x11-xserver-utils \
    dex \
    kitty \
    geany \
    geany-plugins \
    zenity \
    yad

# Install additional fonts and utilities
echo "Installing fonts and additional utilities..."
sudo apt-get install -y \
    fonts-noto-mono \
    fonts-ibm-plex \
    dex \
    lsb-release

# Install deb-get and deborah
echo "Installing deb-get and deborah..."
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
sudo deb-get install deborah

echo "Installation completed."

sudo apt-get -y install rofi jq policykit-1-gnome git playerctl mpd ncmpcpp geany ranger mpc qt5ct gpg-agent wget
sudo apt-get -y install xdotool feh ueberzug maim pamixer libwebp-dev xdg-user-dirs webp-pixbuf-loader ascii toilet toilet-fonts awk libmodule-build-perl
sudo apt-get -y install gvfs gvfs-backends engrampa tint2 dmenu xdo jgmenu redshift xautolock fzf ytfzf yt-dlp gparted whois vlc exa network-manager-gnome rbenv
sudo apt-get -y install gawk tumbler gpick neofetch xdg-utils python-is-python3 python3-gi gir1.2-nm-1.0 duf dex geany-plugins jq curl wget geolocate mpdris2 tmux
sudo apt-get -y install libglib2.0-bin btop ncdu bat exa wmctrl acpid xclip scrot acpi mpdris2 libplayerctl-dev gir1.2-playerctl-2.0 lxappearance bc apt-transport-https
sudo apt-get -y install suckless-tools viewnior xsel x11-xserver-utils feh cron libpango1.0-dev sxiv gnome-disk-utility tree nala zoxide xdg-utils
sudo apt-get -y install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libxcb1-dev bc cava
sudo apt-get -y install libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev psmisc
sudo apt-get -y install libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev
sudo apt-get -y install xcb cmake gcc libgtk-3-dev ninja-build libgtkmm-3.0-dev libxcb-randr0 libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-keysyms1-dev
sudo apt-get -y install libxcb-ewmh-dev libxcb-xinerama0 libxcb-cursor-dev libxcb-shape0-dev numlockx postgresql libpq-dev nodejs yarnpkg git zlib1g-dev libssl-dev 
sudo apt-get -y install libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev duf lolcat libxslt1-dev software-properties-common ruby-dev rubygems
sudo apt-get -y install dconf-editor hw-probe libssl-dev libreadline-dev zlib1g-dev autoconf bison libyaml-dev libncurses5-dev libffi-dev libgdbm-dev hwinfo
sudo apt-get -y install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-util0-dev python3-xcbgen xcb-proto figlet libxcb-composite0-dev libmpdclient-dev 
sudo apt-get -y install libcurl4-openssl-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libxcb-randr0-dev libxcb-render0-dev libnl-genl-3-dev
sudo apt-get -y install libuv1-dev dirmngr ca-certificates libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-damage0-dev libxcb-glx0-dev libconfig-dev
sudo apt-get -y install xserver-xorg x11-xserver-utils libxcb-shape0-dev kitty
sudo apt-get -y install xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev 
sudo apt-get -y install i3lock redshift cmus ranger
