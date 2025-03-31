#!/usr/bin/env bash
# Bootstrap file for Vagrant hashicorp/precise64, Ubuntu 12.04 LTS

#  # Update everything
#  if [ 0 -eq 1 ]; then
#     sudo apt-get update
#  fi
#
#  # Check if git is installed; possibly unnecessary?
#  git --version >/dev/null 2>&1
#  GIT_IS_AVAILABLE=$?           # should be 0 if git is installed
#  if [ $GIT_IS_AVAILABLE -ne 0 ]; then
#     echo "Git is not available on your system. Installing..."
#     echo ""
#     sudo apt-get install -y git
#  fi

# Download the source files from Github
# We should have already done this already
# git clone https://github.com/jasonkliu/Scripts
# cd Scripts/config/

if [ -a gitignore_global ]; then
   echo "Copying global gitignore"
   cp -v gitignore_global ~/.gitignore_global
fi
if [ -a gitconfig ]; then
   echo "Copying gitconfig"
   cp -v gitconfig ~/.gitconfig
fi
if [ -a vimrc ]; then
   echo "Copying vimrc"
   cp -v vimrc ~/.vimrc
fi
if [ -a bash_profile ]; then
   echo "Copying bash_profile"
   cp -v bash_profile ~/.bash_profile
fi
if [ -a bash_settings.tar.gz ]; then
   echo "Copying bash_settings"
   cp -v bash_settings.tar.gz ~
   cd ~
   tar xvfz bash_settings.tar.gz
   rm bash_settings.tar.gz
   source ~/.bash_profile
fi

echo "If the prompt hasn't changed, run this: source ~/.bash_profile"
echo "Remember to change user name and email in ~/.gitconfig"
read

# GNU bash, version 5.2.37(1)-release (aarch64-apple-darwin24.2.0)
# Edit .bash_it/lib/helpers.bash and remove the following lines (4-7)
# Otherwise, this error will be present:
# -bash: continue: only meaningful in a `for', `while', or `until' loop

#   if [ ! -d "${BASH_IT}/${subdirectory}/enabled" ]
#     then
#       continue
#   fi
