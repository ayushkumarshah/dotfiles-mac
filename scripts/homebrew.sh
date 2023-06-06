#!/bin/zsh

# DESCRIPTION
# Installs OS X system software.

if ! command -v brew >/dev/null; then
    echo "[SYSTEM] Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
else
    echo "[SYSTEM] Update Homebrew"
    brew update
fi
echo ""
brew upgrade

echo "[SYSTEM] Install Homebrew Cask"
brew tap caskroom/cask-cask
echo ""

echo "[SYSTEM] Install Brew Bundle"
brew tap Homebrew/bundle
echo ""

brew install git
brew install zsh
brew install wget
