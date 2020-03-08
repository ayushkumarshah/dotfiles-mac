#!/usr/bin/env zsh

# Create Symlinks
link_to() {
    if [ ! -e "$1" ]; then
        printf "\nWARNING: cannot link $1 because it does not exist\n"
    else
        mkdir -p "$(dirname "$2")"
        ln -s "$1" "$2"
        printf "\n$2 Linked to $1 \n\n"
    fi
}
link_dotfile() {
  link_to $(pwd)/$1 ~/$1
}

# Install ohmyzsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Install plugins for ohmyzsh
brew install autojump # Mac
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Link config files
link_dotfile .zshrc
link_dotfile .bash_profile
link_dotfile .gitconfig
link_dotfile .tmux.conf
link_dotfile .vimrc