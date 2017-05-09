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

# Install command line tools.

brew install mosh
brew install fish

# Install fonts.

brew tap caskroom/fonts
brew cask install font-mononoki

# Install Mac apps.

brew cask install 1password
brew cask install appcleaner
brew cask install battle-net
brew cask install coconutbattery
brew cask install day-o
brew cask install gimp
brew cask install iterm2
brew cask install keepingyouawake
brew cask install launchbar
brew cask install monolingual
brew cask install moom
brew cask install slack
brew cask install steam
brew cask install sublime-text
brew cask install superduper
brew cask install the-unarchiver

# Switch shells.

sudo chsh -s /usr/local/bin/fish $USER

# Set some nice defaults.

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Tweak the Dock.

defaults write com.apple.dock orientation left
defaults write com.apple.dock autohide -bool true

# Tweak iTerm.

defaults write com.googlecode.iterm2 ShowPaneTitles 0
defaults write com.googlecode.iterm2 SplitPaneDimmingAmount 0.1

# Show the ~/Library folder.

chflags nohidden ~/Library/

# Restart the Dock and the UI server.

killall Dock
killall SystemUIServer
