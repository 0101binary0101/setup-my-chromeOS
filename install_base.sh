#!/bin/bash

# setup my working environment on my chromebook or chromeOS flex device

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install apt-transport-https ca-certificates gnupg software-properties-common apt-utils

# Add Google SDK APT Key 
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google-apt-key.gpg add -
#
echo "deb [signed-by=/usr/share/keyrings/cloud.google-apt-key.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a  /etc/apt/sources.list.d/google-cloud-sdk.list
# Install google cloud

sudo apt update && sudo apt install google-cloud-sdk

##
## This will throw your browser window to authenticate the login
gcloud auth login --enable-gdrive-access

#
# Install Microsoft vscode
#
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64,arm64,armhf] http://packages.microsoft.com/repos/code stable main"
sudo apt update && sudo apt install code

#
# Linux Folder Browser - helps with navigation of Linux environment.
#
sudo apt install dolphin

#
# Seahorse for managing secrets and keyrings
#
sudo apt install seahorse

#
# PyCharm
#
wget https://download.jetbrains.com/python/pycharm-community-2023.2.5.tar.gz
mkdir pycharm && tar -xvf pycharm-community-*.tar.gz -C pycharm --strip-components 1
rm pycharm-community-2023.2.5.tar.gz
sudo mv pycharm /opt/pycharm
# Create the Desktop Launcher
wget https://raw.githubusercontent.com/0101binary0101/setup-my-chromeOS/main/pycharm-launch.desktop
sudo mv pycharm-launch.desktop /usr/share/applications/

#
# Remmina RDP and SSH environment
# Remmina comes in the stable Linux environment.
sudo apt install remmina remmina-plugin-secret remmina-plugin-rdp remmina-common remmina-plugin-vnc
# Move the default remmina directory out the way and then Link my global shared directory with my local environment.
mkdir -p ~/.local/share/
if [ -d ~/.local/share/remmina ]; then mv ~/.local/share/remmina ~/.local/share/remmina.local; fi
ln -s /mnt/chromeos/GoogleDrive/MyDrive/ChromeOS/_local/share/remmina/ ~/.local/share/remmina

##
