#ZSH
export TERM=xterm-256color
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"

export EDITOR="nvim"
stty -ixon -ixoff

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Functions
. $HOME/Dropbox/dot-files/functions

# Elixir
export ERL_AFLAGS="-kernel shell_history enabled"

# Antigen
source $(brew --prefix)/share/antigen/antigen.zsh
source ~/.antigenrc
