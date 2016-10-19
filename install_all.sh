#!/bin/bash

sudo apt-get update
sudo apt-get install -y wget curl build-essential git

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g grunt bower gulp yo

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm
gem install sass

sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

sudo apt-get install -y xfce4 xfce4-goodies gnome-icon-theme-full
sudo touch /etc/X11/Xwrapper.config
sudo chmod 777 /etc/X11/Xwrapper.config
sudo echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
sudo /usr/share/debconf/fix_db.pl && sudo dpkg --configure -a

# Install Sublime Text 3
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
sudo dpkg -i sublime-text_build-3126_amd64.deb

# VSCode e Atom Dependencies
sudo apt-get install -y -f libnss3 libnspr4 libnss3-nssdb libxss1 libgconf2-4

# Install VSCode
wget https://go.microsoft.com/fwlink/?LinkId=760868 -O vscode.deb
sudo dpkg -i vscode.deb

# Install Atom
sudo apt-get install -y gvfs-bin gconf2
wget https://github.com/atom/atom/releases/download/v1.11.1/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
