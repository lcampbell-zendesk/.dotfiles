#!/usr/bin/env sh

ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.vimrc ~/
ln -sf ~/.dotfiles/.vim ~/

ln -sf ~/.dotfiles/.config ~/

ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore_global ~/

ln -sf ~/.dotfiles/.atom ~/

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install atom
brew cask install iterm2
