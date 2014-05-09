#!/usr/bin/env bash
# Bootstrap file for Vagrant hashicorp/precise64, Ubuntu 12.04 LTS

# Update everything
if [ 0 -eq 1 ]; then
   sudo apt-get update
fi

# Check if git, capybara, rspec, and sinatra are installed
git --version >/dev/null 2>&1
GIT_IS_AVAILABLE=$?           # should be 0 if git is installed
if [ $GIT_IS_AVAILABLE -ne 0 ]; then 
   echo "Git is not available on your system. Installing..."
   echo ""
   sudo apt-get install -y git
fi

# Download the source files from Github
git clone https://github.com/jasonkliu/Scripts
cd Scripts/config/
if [ -a gitignore_global ]; then
   echo "Copying global gitignore"
   cp gitignore_global ~/.gitignore_global
fi
if [ -a vimrc ]; then
   echo "Copying vimrc"
   cp vimrc ~/.vimrc
fi
if [ -a bash_profile ]; then
   echo "Copying bash_profile"
   cp bash_profile ~/.bash_profile
fi
if [ -a bash_settings.tar.gz ]; then
   echo "Copying bash_settings"
   cp bash_settings.tar.gz ~
   cd ~
   tar xvfz bash_settings.tar.gz
   rm bash_settings.tar.gz
   source ~/.bash_profile
fi


