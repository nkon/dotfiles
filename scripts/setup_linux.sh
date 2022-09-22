#!/bin/bash

set -eu

sudo apt install zsh-autosuggestions
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${HOME}/.zshrc
fi

sudo apt install tmux
