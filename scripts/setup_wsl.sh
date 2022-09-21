#!/bin/bash

set -eu

apt install zsh-autosuggestions
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
    echo "source /usr/sharezsh-autosuggestions/zsh-autosuggestions.szh" >> ${HOME}/.zshrc
fi

apt install tmux
