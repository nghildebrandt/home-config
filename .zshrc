export ZSH=${HOME}/.oh-my-zsh
export LANG=en_US.UTF-8
export ZSH_THEME="robbyrussell"
export VISUAL=vim
export EDITOR="$VISUAL"
plugins=(git rails ruby node react-native)

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=${PATH}:"/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:${HOME}/.rvm/bin:${HOME}.rvm/bin:${HOME}.phantomjs/bin"
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools
export PATH=${PATH}:${HOME}/.yarn/bin

source /home/john/.dev-tmux
source $ZSH/oh-my-zsh.sh

source ~/.bin/tmuxinator.zsh

alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
alias mux="rvm 2.3.5 do tmuxinator"
alias toclip="tmux show-buffer | clipcopy"
alias gall="git add --all :/"
alias o="xdg-open"
alias p="qpdfview"
alias pa="qpdfview **/*pdf"
alias ggpush='git push origin $(git_current_branch) --tags'
alias ggpull='git pull origin $(git_current_branch) --tags'
alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get autoremove'

# Fixes that should not be
function sdp_dokku {
  (cd ~ && DOKKU_PORT=2222 DOKKU_HOST=sdp-web dokku "$1 web ${@:2}")
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

stty -ixon

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
