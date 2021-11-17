# History in cache directory:
HISTFILE=~/.zsh_history

HISTSIZE=10000000000
SAVEHIST=$HISTSIZE

setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY           # Add Timestamp to history
setopt HIST_FIND_NO_DUPS          # Handling duplicate commands
setopt HIST_IGNORE_ALL_DUPS       # Handling duplicate commands



# asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)


# Colors
autoload colors && colors


# grc
# [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

