#!/bin/sh

set -e

#
# Install and configure vim
#
printf "\nVIM\n\n"
brew install vim

printf "Install vim bundle.\n"
rm -rf ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printf "Create symbolic link to vimrc.\n"
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

printf "Install vim plugins.\n"
vim +PluginInstall +qall