""" ~/.vimrc
set fileencodings=utf-8

""" このファイルは最小限にしておいて ~/dotfiles/virmc.pref から読み込む
if filereadable(expand('~/dotfiles/vimrc.pref'))
    source ~/dotfiles/vimrc.pref
endif

