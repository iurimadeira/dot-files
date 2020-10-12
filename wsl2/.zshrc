export TERM=xterm-256color
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh
export ERL_AFLAGS="-kernel shell_history enabled"

export EDITOR="code --wait"

stty -ixon -ixoff

# General functions
function cdw() { cd ~/workspace }
function cdt() { cd ~/workspace/toggl-plan }
function cdc() { cd ~/workspace/toggl-plan/core }
function cdd() { cd ~/workspace/toggl-plan/devops }
function cdo() { cd ~/Dropbox/org-mode }

# Org Mode Functions
function wjp() { code ~/Dropbox/org-mode/weekly-todos/week-$(gdate -d 'last week' +"%V").md }
function wj() { code ~/Dropbox/org-mode/weekly-todos/week-$(gdate +"%V").md }
function wjn() { code ~/Dropbox/org-mode/weekly-todos/week-$(gdate -d 'next week' +"%V").md }
function note() { local f="$1"; code ~/Dropbox/org-mode/notes/$f.md }
function notes() { code ~/Dropbox/org-mode }

# Git functions
function gcaa() { git add --all;  git commit; }

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export PATH="$PATH:/mnt/c/Users/iurim/AppData/Local/Programs/Microsoft VS Code/bin"
export PATH=$HOME/bin:$PATH
