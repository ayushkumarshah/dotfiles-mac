#!/bin/bash

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install pynvim and jedi
conda activate base
pip install pynvim==0.4.2 jedi==0.17.2

brew install fzf ranger ripgrep node
sh .config/nvim/scripts/install_coc_extensions.sh

$(brew --prefix)/opt/fzf/install
# pip install ueberzug

