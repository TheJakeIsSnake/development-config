# Install 
### Ubuntu
Add the repository for the latest stable version of neovim:

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim zoxide zsh tmux stow ripgrep fzf unzip g++ -y
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
```
### Arch

```
sudo pacman -S neovim zsh zoxide tmux stow ripgrep unzip fzf
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
```
## Pull Submodules

Run the following to get the submodules included in this repositry:

```
git submodule init
git submodule update
```
## Other Modules
```
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```
## Run Stow
Run the following command in this directory to create the symlinks:

```
stow .
```
run the following, and reopen the terminal.
```
chsh -s /bin/zsh
```
