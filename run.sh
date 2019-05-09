#!/bin/bash

echo "[!] konstfish macOS setup script"

echo "[*] setting up brew"
if command -v brew &>/dev/null ; then
  brew upgrade
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask

echo "[*] installing apps"
brew cask install atom
brew cask install google-chrome
brew cask install firefox
brew cask install spotify
brew cask install ubersicht
brew cask install moom
brew cask install qbittorrent
brew cask install discord
brew cask install jetbrains-toolbox

echo "[*] installing cli apps"
brew install imagemagick
brew install cmake
brew install neofetch
brew install nmap
brew install curl
brew install wget
brew install python3

echo "[*] setting up zsh"
brew install zsh
brew install node

npm install -g spaceship-prompt

chsh -s /bin/zsh

echo "[*] installing fonts"
echo "[-] hack"
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
cp ttf/*.ttf /Library/Fonts/
rm -r ttf
rm Hack-v3.003-ttf.zip

echo ""
echo "[-] scientifica"
git clone https://github.com/NerdyPepper/scientifica
cp scientifica/regular/scientifica.dfont /Library/Fonts/
sudo rm -r scientifica

echo ""
echo "[-] nerdfont"
mkdir nfhack
cd nfhack
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip
unzip Hack.zip
mv "Hack Regular Nerd Font Complete.ttf" /Library/Fonts
cd ..
rm -r nfhack

echo "[*] setting up dive"

git clone https://github.com/konstfish/dive && cd dive
./install.sh

echo "[!] done :)"
