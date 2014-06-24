#!/bin/sh
# Located at .git/hooks/post-commit, called after commit
# Post-commit script used for iOS Development
# Requirements: CocoaPods, xctool (please install xctool first
# because it's hard to check for otherwise)

# set -e # Halt on errors for debugging

dir=${PWD##*/}
echo "Running the post-commit script in: $dir"

# Update packages in preparation 
gem list cocoapods -i 2>&1 >/dev/null
if [ $? -ne 0 ]; then 
  read -p "Error: Cocoapods isn't installed on your system. Install? "
  gem install cocoapods
  # pod setup
fi

if [ -e Podfile ]; then
  pod install
else 
  read -p "Error: No Podfile "
fi

brew upgrade xctool 2>&1 >/dev/null

# Jobs to test on the script
xctool -project $dir/$dir.xcodeproj -scheme $dir test

echo ""

