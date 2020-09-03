#!/usr/bin/env zsh

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]

# OPTIONS

process_option() {
  case $1 in
  'all')
    source scripts/config.sh
    source scripts/ohmyzsh.sh
    source scripts/link.sh
    brew bundle
    bundle install
    source scripts/apps.sh
    source scripts/ssh.sh
    break
    ;;
  'apps')
    source scripts/apps.sh
    break
    ;;
  'brewapps')
    brew bundle
    bundle install
    break
    ;;
  'config')
    source scripts/config.sh
    break
    ;;
  'link')
    source scripts/link.sh
    break
    ;;
  'homebrew')
    source scripts/homebrew.sh
    break
    ;;
  'neovim')
    source scripts/neovim.sh
    break
    ;;
  'ohmyzsh')
    source scripts/ohmyzsh.sh
    break
    ;;
  'ssh')
    source scripts/ssh.sh
    break
    ;;
  'q')
    break
    ;;
  *)
    break
    ;;
  esac
}

# MENU
while true; do
  if [[ $# == 0 ]]; then
    echo ""
    echo "******************"
    echo "    Setup OS X    "
    echo "******************"
    echo ""
    echo "Available commands:"
    echo ""
    echo "      all:  Complete setup of mac"
    echo "     apps:  Install useful apps"
    echo " brewapps:  Install packages & applications from Brewfile"
    echo "   config:  Default settings for mac"
    echo "     link:  Link dotfiles to home"
    echo " homebrew:  Install homebrew installer"
    echo "   neovim:  Install neovim requirements"
    echo "  ohmyzsh:  Install ohmyzsh"
    echo "      ssh:  Create & copy SSH key"
    echo ""
    echo "        q:  Quit/Exit."
    echo ""
    read -p "Enter option: " response
    echo ""
    process_option $response
  else
    process_option $1
  fi
done
