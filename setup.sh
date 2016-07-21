#!/usr/bin/env sh

# Prepare the directories.

mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages

# Symlink all the things.

ln -sf ~/.dotfiles/.config ~/
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore_global ~/
ln -sf ~/.dotfiles/.sublime ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.vim ~/
ln -sf ~/.dotfiles/.zshrc ~/

# Install homebrew.

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install fonts.

brew tap caskroom/fonts
brew cask install font-mononoki

# Install Mac apps.

brew cask install appcleaner
brew cask install iterm2
brew cask install launchbar
brew cask install monolingual
brew cask install moom
brew cask install slack
brew cask install sublime-text

# Make typing not suck.

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
