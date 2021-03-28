# Vars
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000


# Nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# asdf
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

