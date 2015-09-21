export ZSH=/home/iuri/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
. ~/.nvm/nvm.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setup keyboard related things
setxkbmap -layout br
setxkbmap -option caps:swapescape

# Disabling control flow keystrokes
stty -ixon

# Git functions
function gst() { git status; }
function gca() { git add --all;  git commit; }
function gcap() {if [ -z "$*"  ]; then echo "No remote/branch! WTF r u doin?"; else; git add --all; git commit; git push $*; fi}
