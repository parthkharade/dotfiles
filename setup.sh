#!/bin/bash

# Script to install nvim, tmux, zoxide and fzf add more stuff if needed.

check_status(){
  if[ $? -ne 0 ]; then
    echo "$1 failed"
  fi
}

echo "Installing Neovim ....."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &&
sudo rm -rf /opt/nvim &&
sudo tar -C /opt -xzf nvim-linux64.tar.gz
check_status "Neovim Installation"

# export PATH="$PATH:/opt/nvim-linux64/bin" -----> Add this to your bashrc if not present. <AUTOMATE THIS?>

sudo apt-get install tmux
check_status "tmux Installation"

#
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
check_status "zoxide installation"


# eval "$(zoxide init bash)" add this to your bashrc if not present.
