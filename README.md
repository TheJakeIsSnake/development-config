# Install 
### Ubuntu
Add the repository for the latest stable version of neovim:

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim zsh tmux stow -y
```
### Arch

```
sudo pacman -S neovim zsh tmux stow
```
## Pull Submodules

Run the following to get the submodules included in this repositry:

```
git submodule init
git submodule update
```
## Run Stow
Run the following command in this directory to create the symlinks:

```
stow .
```
## Source Tmux Config

Run the following command to ensure that tmux gets the correct Config:
```
source ~/.config/tmux/tmux.conf
```

```
chsh /bin/zsh
```
