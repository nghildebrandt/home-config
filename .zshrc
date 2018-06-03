export ZSH=/home/john/.oh-my-zsh

export VISUAL=vim
export EDITOR="$VISUAL"

ZSH_THEME="robbyrussell"
plugins=(git ruby rails node react-native)

source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/Android"

source /home/john/.rvm/scripts/rvm
source /home/john/.dev-tmux
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias dokku='$HOME/.dokku/contrib/dokku_client.sh'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
