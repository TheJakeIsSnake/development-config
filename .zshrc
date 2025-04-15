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


bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey '^i' history-search-backward
bindkey '^e' history-search-forward

setopt autocd extendedglob notify
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/$USER/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

ZDOTDIR=~/.config/zsh

# Aliases

alias dexec="docker exec -it"
alias dps="docker ps -a"
alias ls='ls --color=auto'
alias g='git'
alias gcheckout='git checkout'
alias gpull='git pull'
alias greset='git reset --hard'
alias fcheckout='git checkout $(git branch | fzf)'

# Mykey Work Aliases
alias devexec="dexec development-app-1"
alias rails="dexec development-app-1 rails"
alias import_db='cd ~/project && pv tmp/$(ls tmp | grep sql | fzf) | mysql -u mykeyproduser -psimple -h 127.0.0.1 -P 3309 mykey_dev'
alias safe_push='devexec rubocop && devexec brakeman -q && ~/test.sh && git push'

# Environment Variables

GIT_EDITOR=vim
PATH="$HOME/.local/bin:$PATH"
COMMIT_PREAMBLE="closes: #$()"

# ZINIT
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local.share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

autoload -U compinit && compinit

eval "$(zoxide init zsh --cmd cd)"

# Start in tmux

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux a || tmux
fi

# asdf setup
. "$HOME/.asdf/asdf.sh"


# Posh

eval "$(oh-my-posh init zsh --config '~/.config/posh/profile.yaml')"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source ~/.rvm/scripts/rvm

if ruby -v 2> /dev/null > /dev/null; then
else
  rvm install ruby-3.2.3
  rvm --default ruby-3.2.3
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


