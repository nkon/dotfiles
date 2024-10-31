## zsh personal preference

## History
export HISTFILE=${HOME}/.local/state/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_space

## Completion

## Path

export PATH=$PATH:$HOME/.local/bin

## Aliase

alias ls='ls -FG '
alias tree='exa -rT '
export EDITOR=vim
tre() { command tre "$@" -e && source "/tmp/tre_aliases_$USER" 2>/dev/null; }

if [[ ${TERM} == "xterm" ]]
then
	export TERM=xterm-256color
fi

if [[ ${TERM_PROGRAM} == "vscode" ]]
then
	source "$(code --locate-shell-integration-path zsh)"
fi

if [[ ${TERM} == "alacritty" ]]
then
	export LC_CTYPE=ja_JP.UTF-8
fi

