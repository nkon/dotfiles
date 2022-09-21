#!/bin/bash

set -eu

brew install --cask visual-studio-code

brew install starship

brew install zsh-autosuggestions
if [ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
    echo "source $(brew --prefix)/sharezsh-autosuggestions/zsh-autosuggestions.szh" >> ${HOME}/.zshrc
fi

brew install --cask alacritty

brew install tmux
