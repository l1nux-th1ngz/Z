# Install LoginMaager
sudo apt-get update
sudo apt-get -y install --no-install-recommends lightdm 
sudo apt-get -y install --no-install-recommends lightdm-gtk-greeter
sudo apt-get -y install --no-install-recommends slick-greeter

sudo systemctl enable lightdm
