#!/bin/sh

set -e

#
# Install Visual Studio Code
#
printf "\nVISUAL STUIDO CODE\n\n"
install_app "Visual Studio Code.app" visual-studio-code

printf "Create symbolic link to keybindings.json.\n"
ln -sf $(pwd)/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

printf "Create symbolic link to keybindings.json.\n"
ln -sf $(pwd)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

printf "Install Visual Studio Code extensions.\n"
code --install-extension Braver.vscode-solarized
code --install-extension DotJoshJohnson.xml
code --install-extension PeterJausovec.vscode-docker
code --install-extension abusaidm.html-snippets
code --install-extension bbenoist.vagrant
code --install-extension deerawan.vscode-dash
code --install-extension djabraham.vscode-yaml-validation
code --install-extension donjayamanne.python
code --install-extension ms-vscode.csharp