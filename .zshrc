export ZSH=/home/iuri/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
. ~/.nvm/nvm.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setup keyboard related things
setxkbmap -layout us intl
setxkbmap -option caps:swapescape

# Disabling control flow keystrokes
stty -ixon

# Git functions
function gst() { git status; }
function gcaa() { git add --all;  git commit; }

# Gnome UI configurations
#gsettings set org.gnome.desktop.interface scaling-factor 0.9
gsettings set org.gnome.desktop.interface text-scaling-factor 0.9
