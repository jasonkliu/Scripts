#!/usr/bin/env bash

# Install homebrew-cask (assumes brew already installed)
# brew install caskroom/cask/brew/cask

# Manually install:
# Sublime Text 3, TeX, XCode, iTerm2, CS5, ADT, XCode
# Android Studio, Cisco VPN

brew cask install alfred atom dropbox flux macvim mou 
brew cask install pckeyboardhack skype spotify thunderbird 
brew cask install transmission virtualbox
brew cask install android-file-transfer
brew cask alfred link # Add Alfred search

# rbenv install 2.1.2 && rbenv global 2.1.2
brew install rbenv ruby-build
brew install bash fish
brew install fortune cowsay figlet
brew install git vim wget
brew install go rust python python3
