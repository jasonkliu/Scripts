#!/usr/bin/env bash

# Hidden icons in Dock are transparent
defaults write com.apple.dock showhidden -bool YES

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


