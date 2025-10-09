#!/bin/bash

set -eu

# brew bundle install

brew install --cask visual-studio-code

brew tap homebrew/cask-fonts
brew install font-cica

brew install starship

brew install zsh-autosuggestions
if [ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
    echo "source $(brew --prefix)/sharezsh-autosuggestions/zsh-autosuggestions.szh" >> ${HOME}/.zshrc
fi

brew install --cask alacritty

brew install tmux
brew install qulculate-gtk
brew install tre-command
