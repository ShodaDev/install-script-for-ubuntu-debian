#!/bin/sh
# All-In-One Install script for Sudo/NodeJS/Yarn/Python/Py3/FFMPEG/Java13
echo -e '\e[31m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
echo -e '\e[31mWelcome to Insall-Script made by ShodaDev0081\e[0m'
echo -e '\e[31m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'

# Install sudo
apt-get install sudo
sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev curl

# install nodejs
sudo apt update
sudo apt install -y build-essential curl
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# install yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# install python
sudo apt-get install python-pip
sudo apt-get install python3-pip
curl -O https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tar.xz
tar -xf Python-3.9.1.tar.xz
cd Python-3.9.1
./configure --enable-optimizations
make -j 4
sudo make altinstall
cd ..

# install ffmpeg
sudo apt update
sudo apt install ffmpeg

# install java
wget https://download.java.net/openjdk/jdk13/ri/openjdk-13+33_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-13+33_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-13/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-13/bin/java

echo -e 'All installations should be successful, error codes are probably displayed in the log.'
echo -e '\e[96m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
echo -e 'Credits: ShodaDev0081'
echo -e 'Discord: ShodaDev#0081'
echo -e 'Website: shoda-uwu.eu'
echo -e '\e[96m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
