# Install 
### Ubuntu

Run the install script, then run `stow .` in the root directory.

### Arch

```
sudo pacman -S neovim zsh zoxide tmux stow ripgrep unzip fzf
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
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

## Git Config Changes

```
git config --global core.editor vim
git config --global merge.tool nvimdiff
git config --global mergetool.keepBackup false
```
