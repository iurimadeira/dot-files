export TERM=xterm-256color
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh
export ERL_AFLAGS="-kernel shell_history enabled"

#export EDITOR="nvim"
export EDITOR="nvim"

stty -ixon -ixoff

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
. $HOME/Dropbox/dot-files/functions

export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"

#set -o vi
#bindkey "^R" history-incremental-search-backward
