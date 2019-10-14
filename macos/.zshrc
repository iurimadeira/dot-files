export TERM=xterm-256color
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="madeira"
plugins=(git taskwarrior homebrew)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh
export ERL_AFLAGS="-kernel shell_history enabled"

stty -ixon -ixoff

# Git functions
function gcaa() { git add --all;  git commit; }

function ssh-core-log() { ssh -t $1 'sudo tail -f /var/log/upstart/teamweek-core.log'; }
function ssh-core-console() { ssh -t $1 'sudo /opt/teamweek-core/bin/core remote_console'; }

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
export PATH=$HOME/bin:$PATH
