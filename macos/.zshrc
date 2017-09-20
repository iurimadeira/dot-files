export TERM=xterm-256color
export ZSH=/Users/iurimadeira/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh
export ERL_AFLAGS="-kernel shell_history enabled"

stty -ixon -ixoff

# Git functions
function gst() { git status; }
function gcaa() { git add --all;  git commit; }

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
export PATH=$HOME/bin:$PATH
