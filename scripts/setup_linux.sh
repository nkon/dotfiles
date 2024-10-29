#!/bin/bash

set -eu

sudo apt install zsh-autosuggestions
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${HOME}/.zshrc
fi

sudo apt install tmux fonts-powerline curl build-essential cmake vim synaptic

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
cargo install tre-command starship
