dotfiles_dir=${HOME}/dotfiles

if [ -f ${dotfiles_dir}/zshrc ]
    mkdir -p ${HOME}/.config/zsh
    ln -s ${dotfiles=dir}/zshrc ${HOME}/.config/zsh/zshrc
    echo 'source ${HOME}/.config/zsh/zshrc' >> ${HOME}/.zshrc
fi

if [ -f ${dotfiles_dir}/alacritty.yml ]
    ln -s ${dotfiles_dir}/alacritty.yml ${HOME}/.config/alacritty/
fi

if [ -f ${dotfiles_dir}/starship.toml ]
    ln -s ${dotfiles_dir}/starship.toml ${HOME}/.config/
    echo 'eval "$(starship init zsh)"' >> ${HOME}/.zshrc
fi

if [ -f ${dotfiles_dir}/tmux.conf ]
    ln -s ${dotfiles_dir}/tmux.conf ${HOME}/.tmux.conf
fi

