dotfiles_dir=${HOME}/dotfiles

if [ -f ${dotfiles_dir}/alacritty.yml ]
    ln -s ${dotfiles_dir}/alacritty.yml ${HOME}/.config/alacritty/

if [ -f ${dotfiles_dir}/starship.toml ]
    ln -s ${dotfiles_dir}/starship.toml ${HOME}/.config/

echo 'eval "$(starship init zsh)"' >> ${HOME}/.zshrc


