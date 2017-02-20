#!/bin/sh

set -e

if which brew > /dev/null; then
    printf "Brew is installed.\n"
else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

printf "Update brew.\n"
brew update

printf "Install cask.\n"
brew tap caskroom/cask

printf "Install packages.\n"
brew install go
brew install jq
brew install openssl
brew install node
brew install wget
brew install vim

install_app () {
    printf "Install application '$1'\n"
    ls /Applications/ | grep -i "$1" > /dev/null || brew cask install $2
}

install_app "Google Chrome.app" google-chrome
install_app "VLC.app" vlc
install_app "Atom.app" atom
install_app "Google Chrome.app" google-chrome
install_app "Visual Studio Code.app" visual-studio-code
install_app "Slack.app" slack

printf "Install vim bundle.\n"
rm -rf ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printf "Create symbolic link to vimrc.\n"
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

printf "Install vim plugins.\n"
vim +PluginInstall +qall