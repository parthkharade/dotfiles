#!/bin/bash

# Script to install nvim, tmux, zoxide and fzf add more stuff if needed.
#
# TODOOOOO
# Install NodeJS for COC and rip grep, remove rip grep installattion file after installing for telescope live grep. 
# Install GCC and clangd and Python LSP server?

echo "Installing pip"
sudo apt-get install python3-pip python3-setuptools python3-dev
echo "Installing gcc"
sudo apt-get install gcc
echo "Installing clangd"
sudo apt-get install clangd
echo "Installing NodeJS ....." # Need this for CoC. Remove after LSP and nvim-cmp works.
# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# download and install Node.js (you may need to restart the terminal)
nvm install 20


echo "Installing RipGrep ....."
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
sudo rm -f ripgrep_14.1.0-1_amd64.deb

echo "Installing Neovim ....."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &&
sudo rm -rf /opt/nvim &&
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm -f nvim-linux64.tar.gz
# export PATH="$PATH:/opt/nvim-linux64/bin" -----> Add this to your bashrc if not present. <AUTOMATE THIS?>

echo "Installing tmux ....."
sudo apt-get install tmux

#
echo "Installing zoxide ....."
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
zoxide init bash

# eval "$(zoxide init bash)" add this to your bashrc if not present.
