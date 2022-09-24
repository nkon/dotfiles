#!/bin/bash

set -eu

dotfiles_dir=${HOME}/dotfiles

if [ -f ${dotfiles_dir}/zshrc ]; then
    mkdir -p ${HOME}/.config/zsh
    ln -sf ${dotfiles_dir}/zshrc ${HOME}/.config/zsh/zshrc
    echo 'source ${HOME}/.config/zsh/zshrc' >> ${HOME}/.zshrc

    # for zsh_history
    mkdir -p ${HOME}/.local/state
fi

if [ -f ${dotfiles_dir}/alacritty.yml ]; then
    mkdir -p ${HOME}/.config/alacritty
    ln -sf ${dotfiles_dir}/alacritty.yml ${HOME}/.config/alacritty/
fi

if [ -f ${dotfiles_dir}/starship.toml ]; then
    ln -sf ${dotfiles_dir}/starship.toml ${HOME}/.config/
    echo 'eval "$(starship init zsh)"' >> ${HOME}/.zshrc
fi

if [ -f ${dotfiles_dir}/tmux.conf ]; then
    mkdir -p ${HOME}/.config/tmux
    ln -sf ${dotfiles_dir}/tmux.conf ${HOME}/.config/tmux/tmux.conf
fi

if [ -f ${dotfiles_dir}/vimrc ]; then
    ln -sf ${dotfiles_dir}/vimrc ${HOME}/.vimrc
fi

if [ -f ${dotfiles_dir}/gitconfig ]; then
    mkdir -p ${HOME}/.config/git
    ln -sf ${dotfiles_dir}/gitconfig ${HOME}/.config/git/config
fi
if [ -f ${dotfiles_dir}/gitignore ]; then
    mkdir -p ${HOME}/.config/git
    ln -sf ${dotfiles_dir}/gitignore ${HOME}/.config/git/ignore
fi

