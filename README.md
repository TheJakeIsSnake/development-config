## Install 
# Ubuntu
Add the repository for the latest stable version of neovim:

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim tmux  -y
```

after cloning this repository, run the following to install the tmux package manager:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

# Zsh Config
Run the following:

```
sudo apt install zsh zoxide -y
chsh -s /bin/zsh
ZDOTDIR=~/.config/zsh
```

Add the fun zsh bits

```
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZDOTDIR:-~}/powerlevel10k
```

Run to set config for zsh and plugins:

```
echo 'ZDOTDIR=~/.config/zsh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
source ${ZDOTDIR:-~}/powerlevel10k/powerlevel10k.zsh-theme
source ${ZDOTDIR:-~}/.p10k.zsh
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

antidote load

eval "$(zoxide init zsh)"
' >> ~/.zshrc

echo '
antidote bundle zsh-users/zsh-completions

' >> ${ZDOTDIR:-~}/.zsh_plugins.txt
```

Lastly, run `exec zsh -il` to reload the shell
