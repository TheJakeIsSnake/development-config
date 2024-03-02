# Install 
### Ubuntu
Add the repository for the latest stable version of neovim:

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim tmux stow -y
```
### Arch

```
sudo pacman -S neovim tmux stow
```
## Pull Submodules

Run the following to get the submodules included in this repositry:

```
git submodule init
git submodule update
```
