#!/bin/sh

set -e

#
# Install and configure z shell
#
printf "\nZSH\n\n"
brew install zsh
brew install zsh-completions
chmod go-w '/usr/local/share'

printf "Install oh-my-zsh.\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "Create symbolic link to configration.\n"
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc

printf "Install terminal theme (https://github.com/tomislav/osx-terminal.app-colors-solarized/).\n"

printf "Install fonts (https://github.com/powerline/fonts).\n"