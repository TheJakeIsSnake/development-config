# Install 
### Ubuntu
Add the repository for the latest stable version of neovim:

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim zoxide zsh tmux stow -y
```
### Arch

```
sudo pacman -S neovim zsh zoxide tmux stow
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
run the following, and reopen the terminal.
```
chsh /bin/zsh
```
