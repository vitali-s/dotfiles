#!/bin/sh

set -e

brew install git

git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

ln -sf $(pwd)/git/.gitconfig ~/.gitconfig