# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"       # Case sensitive completion
ENABLE_CORRECTION="true"    # Enable auto correction

plugins=(git osx ssh-agent warhol)

export EDITOR=vim
export VISUAL=vim

source $ZSH/oh-my-zsh.sh

# #export SSH_KEY_PATH="~/.ssh/rsa_id"
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities "~/.ssh/github-vitali.shcharbin"
# #alias qfind="find . -name " # qfind:    Quickly search for file

eval "$(ssh-agent -s)"
ssh-add -A 2>/dev/null;
ssh-add ~/.ssh/*.private

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias qfind="find . -name " # qfind:    Quickly search for file

# List subfolders with appropriate branches
alias git-branches='printf "\n" && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && basename '{}' && git branch && echo "----------------------------"  && cd .." \; && printf "\n"'

# AWS autom complete
source /usr/local/bin/aws_zsh_completer.sh

function git_branches_change {
    cd $1

    git checkout $2

    cd ..
}

alias git-branches-change="git_branches_change common $1 && git_branches_change server $1 && git_branches_change syncp-database $1"

alias git-stash='printf "\n" && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && basename '{}' && git stash list && echo "----------------------------"  && cd .." \; && printf "\n"'

alias git-ss='printf "\n" && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && basename '{}' && git ss && echo "----------------------------"  && cd .." \; && printf "\n"'

alias git-update='printf "\n" && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && basename '{}' && git pull --rebase && echo "----------------------------"  && cd .." \; && printf "\n"'

alias git-up='printf "\n" && find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && basename '{}' &&
git stash -u && git pull --rebase && git stash pop && cd .." \; && printf "----------------------------\n"'

