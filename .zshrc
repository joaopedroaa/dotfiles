[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
ZSH_THEME="robbyrussell"

export ZSH="/home/pedro/.oh-my-zsh"
export PATH="$(yarn global bin):$PATH"
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/home/pedro/anaconda3/bin:$PATH"

plugins=(
  git
  dnf
  zsh-syntax-highlighting
  zsh-autosuggestions
  fzf
  )

source $ZSH/oh-my-zsh.sh

alias zshrc="code ~/dotfiles/.zshrc"
alias hosts="code /etc/hosts"
alias dotfiles="code ~/dotfiles"

alias c.="code ." alias C.="c."                    
alias c..="code . && exit" alias C..="c.."

alias cdf="cd ~/folder/"
alias cdp="cd ~/projects/"

# <--  Folder  --> #
alias clcss="cdf && cd FolderCSS && c.."
alias clpy="cdf && cd FolderPython && c.."
alias cljs="cdf && cd FolderJavaScript && c.."

# Docker
alias dc="docker-compose"     

# Etc
alias remove="rm -rf"
alias openfolder="xdg-open"
alias openconda="anaconda-navigator"

alias fun="echo -e '
sl
cowsay
cmatrix
oneko
'"