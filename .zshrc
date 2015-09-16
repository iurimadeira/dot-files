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
function gca() { echo '[G]it [C]ommit [A]ll'; git add -A .;  git commit -m "$*"; }
function gcap() { echo '[G]it [C]ommit [A]ll and [P]ull'; git add -A .;  git commit -m "$*"; git pull upstream master; }
function gpt() { echo '[G]it [P]ush with [T]est'; COVERAGE=true rake parallel:spec && git push origin `git rev-parse --abbrev-ref HEAD` }
