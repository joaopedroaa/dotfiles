# History in cache directory:
HISTSIZE=10000000
SAVEHIST=$HISTSIZE



# asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)


# Colors
autoload colors && colors

# grc
# [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

