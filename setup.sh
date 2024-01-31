#!/bin/bash

# Updating and Upgrading dependencies
sudo apt-get update && sudo apt-get upgrade -y

# Installing WPS Office
wget -q http://wps-community.org/downloads/wps-office_11.1.0.10161_amd64.deb
sudo dpkg -i wps-office_*.deb
sudo apt-get -f install -y
rm wps-office_*.deb

# Installing Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -y

# Installing Zotero
wget -q https://download.zotero.org/client/release/5.0.96/Zotero-5.0.96_linux-x86_64.tar.bz2
tar -xvf Zotero-*.tar.bz2
sudo mv Zotero_linux-x86_64 /opt/Zotero
sudo ln -s /opt/Zotero/zotero.desktop /usr/share/applications/zotero.desktop
rm Zotero-*.tar.bz2

# Installing Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Installing GIMP
sudo apt-get install gimp -y

# Installing Inkscape
sudo apt-get install inkscape -y

# Installing Anaconda
wget -q https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-*.sh
rm Anaconda3-*.sh

# Installing R and RStudio
sudo apt-get install r-base -y
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1093-amd64.deb
sudo dpkg -i rstudio-*.deb
rm rstudio-*.deb

# Cleaning up
sudo apt-get autoclean
sudo apt-get autoremove -y

echo "All programs installed successfully!"
