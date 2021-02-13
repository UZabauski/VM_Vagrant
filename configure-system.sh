#!/bin/sh
set -ex

# Set password for default "ubuntu" user
echo "ubuntu:ubuntu" | sudo chpasswd

# Update system, install and enable GUI
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

# Optional: Use LightDM login screen (-> not required to run "startx")
sudo apt-get install -y lightdm lightdm-gtk-greeter

# Optional: Install a more feature-rich applications menu
sudo apt-get install -y xfce4-whiskermenu-plugin
