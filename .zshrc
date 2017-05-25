export TERM=xterm-256color
export ZSH=/home/iuri/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

# Setup keyboard related things
#setxkbmap -layout br
#dconf write /org/gnome/desktop/input-sources/xkb-options "['compose:ralt']"
setxkbmap -layout us_intl -model pc104 -variant basic
setxkbmap -option caps:swapescape
# Para fazer a cedilha aparecer, insira no /etc/environment
#GTK_IM_MODULE=cedilla
#QT_IM_MODULE=cedilla

# Disabling control flow keystrokes
stty -ixon


# Git functions
function gst() { git status; }
function gcaa() { git add --all;  git commit; }

# Gnome UI configurations
#gsettings set org.gnome.desktop.interface scaling-factor 0.9
gsettings set org.gnome.desktop.interface text-scaling-factor 0.9

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
