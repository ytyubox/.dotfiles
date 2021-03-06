#!/bin/bash
echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it

# Remove workspace auto-switching
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock

# Enable repeating keys by pressing and holding down keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Change the default folder for screenshots
mkdir -p ~/screenshots/
defaults write com.apple.screencapture location ~/screenshots/ && killall SystemUIServer
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

xcode-select --install
$(curl -fsSL

echo "install end"

if test ! $(which brew); then
    echo "Install homebrew... https://brew.sh"
fi

Echo "Install oh my zsh from https://github.com/ohmyzsh/ohmyzsh"
