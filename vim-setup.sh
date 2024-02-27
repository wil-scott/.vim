#!/bin/bash

# get os (mac or linux supported)
OS=$(uname)

# install ycm dependencies based on OS
install_ycm() {
    if [ "$OS" == "Linux" ]; then
        sudo apt-get update
        sudo apt-get install build-essential cmake python3-dev -y
    elif [ "$OS" == "Darwin" ]; then
        brew update
        brew install cmake python3
    else
        echo "Unsupported OS"
        exit 1
    fi

    cd ~/.vim/plugged/YouCompleteMe
    python3 install.py 
}

# install vim-gtk (assumes vim9 already on system)
if [ "$OS" == "Linux" ]; then
    sudo apt-get update
    sudo apt-get install vim-gtk3 -y
elif [ "$OS" == "Darwin" ]; then
    brew install vim
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'export MYVIMRC="$HOME/vimrc"' >> ~/.zshrc

# Install Vim plugins using Vundle
vim +PluginInstall +qall

# Install and compile YouCompleteMe
install_ycm

echo "Complete."
