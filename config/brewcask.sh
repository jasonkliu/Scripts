#!/usr/bin/env bash

# Install homebrew-cask (assumes brew already installed)
# brew install caskroom/cask/brew/cask

# Manually install:
# Sublime Text 3, TeX, XCode, iTerm2, CS5, ADT, XCode
# Android Studio, Cisco VPN

brew cask install alfred atom dropbox flux macvim mou 
brew cask install pckeyboardhack skype spotify thunderbird 
brew cask install transmission virtualbox
brew cask install android-file-transfer texshop
brew cask install vagrant heroku-toolbelt
brew cask alfred link # Add Alfred search

# rbenv install 2.1.2 && rbenv global 2.1.2
brew install rbenv ruby-build
brew install bash fish
brew install fortune cowsay figlet
brew install git vim wget
brew install go rust python python3

# Hidden icons in Dock are transparent
defaults write com.apple.dock showhidden -bool YES

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

