#!/bin/bash

# Update 
sudo apt update

# Codeblocks installation
apt-get install codeblocks

# Git istallation
apt-get install git

# Eclipse installation
apt-get -y install default-jdk
snap install --classic eclipse 

# VS Code installation
apt update
apt install -y gnupg2 software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code

# Dia installation
apt-get update
apt-get -y  install dia

# DBeaver installation
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt update
sudo apt -y install dbeaver-ce

# Gephi installation
wget -q --show-progress https://github.com/gephi/gephi/releases/download/v0.9.2/gephi-0.9.2-linux.tar.gz
tar xzf gephi-0.9.2-linux.tar.gz
./gephi-0.9.2/bin/gephi
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt -y install openjdk-8-jdk openjdk-8-jre

# Sagemath installation
sudo apt -y install sagemath-common

# GitKraken installation
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
