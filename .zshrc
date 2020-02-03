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


#                   ALIAS                   #

alias zshc="code ~/.zshrc"
alias hostc="code /etc/hosts"
alias dotfiles="code ~/dotfiles"

alias c.="code ." alias C.="c."                    
alias c..="code . && exit" alias C..="c.."

alias cdl="cd ~/folder/"
alias cdp="cd ~/projects/"

# <--  Folder  --> #
alias clcss="cd ~/folder/FolderCSS && c.."
alias clpy="cd ~/folder/FolderPython && c.."
alias cljs="cd ~/folder/FolderJavaScript && c.."

# <-- Projects --> #
alias cprzr="cd ~/projects/RezendeRammel  && c.."
alias cpweb="cd ~/projects/pedro  && c.."
alias cpazeny="cd ~/projects/visual-studio-code && c.."

# Git
alias gcommit="git commit"     
alias gclone="git clone"     
alias gstatus="git status"     

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

