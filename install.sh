#!/bin/bash
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt update
sudo apt install neovim zoxide zsh tmux stow ripgrep unzip fzf -y
curl -s https://ohmyposh.dev/install.sh | sudo bash -s
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# Install nvm, npm, and node
node -v || $($(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash) && nvm install node && nvm use node && nvm install-latest-npm)

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

# Install Ruby

gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB &&\
  curl -sSL https://get.rvm.io | bash -s stable &&\
  source ~/.rvm/scripts/rvm &&\
  rvm install ruby-3.2.3

