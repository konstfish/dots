#!/usr/bin/env bash

if [[ ! ($(ls /Applications/Xcode.app/) = Contents) ]]; then
  echo "Install XCode before running this."
  exit 1
fi

#installing brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask

#installing brew packages
brew cask install atom

brew install imagemagick
brew install cmake
brew install neofetch
brew install nmap

brew cask install firefox
brew cask install google-chrome
brew cask install bittorent
brew cask install discord
brew cask install jetbrains-toolbox
brew cask install grammarly
brew cask install adobe-creative-cloud
brew cask install moom
brew cask install iterm2
brew cask install pycharm
brew cask install intellij-idea
brew cask install ubersicht

mkdir -p build
git clone https://github.com/rafaelschreiber/dotfiles/
build/dotfiles/./fish_install.sh
rm -r build

cp -R ubersicht/* /Users/david/Library/Application Support/Übersicht/widgets

echo "done!"
