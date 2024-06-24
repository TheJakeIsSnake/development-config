#!/bin/bash
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim zoxide zsh tmux stow ripgrep fzf -y
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

