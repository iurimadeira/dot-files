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
function gcall() { echo '[G]it [C]ommit [A]ll'; git add --all;  git commit -m "$*"; }
function gcpush() { echo '[G]it [C]ommit [A]ll and [P]ull'; git add --all;  git commit -m "$*"; git push; }
function gcpull() { echo '[G]it [C]ommit [A]ll and [P]ull'; git add --all;  git commit -m "$*"; git pull upstream master; }
function gtpush() { echo '[G]it [P]ush with [T]est'; COVERAGE=true rake parallel:spec && git push origin `git rev-parse --abbrev-ref HEAD` }
