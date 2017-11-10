export ZSH=/home/bonflintstone/.oh-my-zsh
export LANG=en_US.UTF-8
ZSH_THEME="robbyrussell"
plugins=(git rails ruby node react-native)

export ANDROID_SDK_ROOT=${HOME}/.android/sdk
export ANDROID_HOME=${ANDROID_SDK_ROOT}

export PATH=${PATH}:"/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/bonflintstone/.rvm/bin:/home/bonflintstone/.rvm/bin:/home/bonflinstone/.phantomjs/bin"
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools
export PATH=${PATH}:${HOME}/.yarn/bin

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source ~/.rvm/scripts/rvm
source ~/.bin/tmuxinator.zsh

alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
alias mux="rvm 2.3.5 do tmuxinator"
alias toclip="tmux show-buffer | clipcopy"
alias gall="git add --all :/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

stty -ixon
