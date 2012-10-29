# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dannysu-dark"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias open="xdg-open"
alias ack="ack-grep"
alias vh="vagrant halt"
alias vu="vagrant up"
alias prj="cd ~/workspace/env/db && vagrant up && cd ~/workspace/env/chopmenu && vagrant up"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx history-substring-search compleat vi-mode)

source $ZSH/oh-my-zsh.sh
source $HOME/apps/nvm/nvm.sh
source $HOME/.rvm/scripts/rvm

# Customize to your needs...
export PATH=~/apps/android-sdk-linux/tools:~/.cabal/bin/:~/apps:~/apps/Sublime\ Text\ 2:/opt/vagrant/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export TERM=screen-256color

unsetopt correctall

nvm use default > /dev/null

# Ctrl-s was annoying
stty -ixon

bindkey -M viins 'jk' vi-cmd-mode

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

rvm use default > /dev/null
