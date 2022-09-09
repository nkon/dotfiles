## zsh personal preference

## History

HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_space

## Completion

source <(procs --completion-out zsh)

## Path

export PATH=$PATH:$HOME/.local/bin

## Aliase

alias ls='ls -FG '

