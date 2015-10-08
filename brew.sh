#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update --verbose

# Upgrade any already-installed formulae.
brew upgrade --all

# Integrates homebrew formulae with MacOS X' launchctl manager.
brew tap homebrew/services

brew install wget
brew install htop
brew install nginx
brew install rabbitmq
brew install redis

# Remove outdated versions from the cellar.
brew cleanup
