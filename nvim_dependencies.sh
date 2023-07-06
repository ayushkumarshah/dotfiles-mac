#!/bin/bash

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install pynvim and jedi
source ~/miniconda3/etc/profile.d/conda.sh
conda activate base
pip install pynvim==0.4.2 jedi==0.17.2

sh .config/nvim/scripts/install_coc_extensions.sh
brew install fzf ranger ripgrep node

# Ranger icons
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

$(brew --prefix)/opt/fzf/install
pip install ueberzug

npm install -g neovim
