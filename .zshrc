# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile~
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
ZDOTDIR=~/.config/zsh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
source ${ZDOTDIR:-~}/powerlevel10k/powerlevel10k.zsh-theme
source ${ZDOTDIR:-~}/.p10k.zsh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

antidote load

# Aliases

alias dexec="docker exec -it"

eval "$(zoxide init zsh)"

