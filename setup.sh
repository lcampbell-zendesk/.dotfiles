#!/usr/bin/env sh

# Symlink all the things.

ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.vim ~/
ln -sf ~/.dotfiles/.config ~/
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore_global ~/
ln -sf ~/.dotfiles/.atom ~/

# Install homebrew.

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install fonts.

brew tap caskroom/fonts
brew cask install font-mononoki

# Install Mac apps.

brew cask install appcleaner
brew cask install atom
brew cask install gimp
brew cask install iterm2
brew cask install launchbar
brew cask install monolingual
brew cask install moom
brew cask install slack
brew cask install steam
brew cask install superduper
brew cask install the-unarchiver

# Make typing not suck.

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
