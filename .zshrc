# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile~
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
bindkey '^i' history-search-backward
bindkey '^e' history-search-forward

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

ZDOTDIR=~/.config/zsh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
source ${ZDOTDIR:-~}/.p10k.zsh

antidote load

# Aliases

alias dexec="docker exec -it"
alias ls='ls --color'
alias g='git'
alias G='git'

# Environment Variables

GIT_EDITOR=vim
PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ZINIT
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local.share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -U compinit && compinit

eval "$(zoxide init zsh --cmd cd)"
