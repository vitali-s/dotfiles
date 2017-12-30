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
brew install gpg
brew install gnupg
brew install python3
brew install vim
brew install zsh
brew install zsh-completions
brew install groovysdk
brew install node

install_app () {
    printf "Install application '$1'\n"
    ls /Applications/ | grep -i "$1" > /dev/null || brew cask install $2
}

# Install and configure git
source git/setup.sh

# Install and configure vim
source vim/setup.sh

# Install and cofigure Visual Studio Code
source vscode/setup.sh

# Install and configure Zsh
source zsh/setup.sh

brew cask install gimp
brew cask install gpgtools
brew cask install java
brew cask install vlc
brew cask install virtualbox
brew cask install visual-studio-code
