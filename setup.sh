#!/usr/bin/env zsh

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./setup.sh [OPTION]


# OPTIONS

process_option() {
  case $1 in
    'all')
      source scripts/defaults.sh
      source scripts/system.sh
      source scripts/config.sh
      brew bundle
      bundle install
      source scripts/apps.sh
      source scripts/ssh.sh
      break;;
    'apps')
      source scripts/apps.sh
      break;;
    'brew')
      brew bundle
      break;;
    'config')
      source scripts/config.sh
      break;;
    'defaults')
      source scripts/defaults.sh
      break;;
    'ssh')
      source scripts/ssh.sh
      break;;
    'system')
      source scripts/system.sh
      break;;
      
    'q')
      break;;
    *)
      break;;
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
    echo "      all:  Install everything"
    echo "     brew:  Install packages & applications from Brewfile"
    echo "   config:  Configure macOS"
    echo " defaults:  Default settings for mac"
    echo "      dev:  Configure development environment"
    echo "     apps:  Install useful apps"
    echo "      ssh:  Create & copy SSH key"
    echo "   system:  Install system software"
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
