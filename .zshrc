ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "


# Oh My Zsh
export ZSH="/home/pedro/.oh-my-zsh"
# Android Studio
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Flutter
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:`pwd`/flutter/bin/cache/dart-sdk/bin"
# Etc
export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:$HOME/.rvm/bin" 
export PATH="$PATH:/home/pedro/anaconda3/bin"



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

alias clean="sudo apt-get clean"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias autoremove="sudo apt autoremove"


plugins=(
  git
  dnf
  fzf
  )

source $ZSH/oh-my-zsh.sh
  
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zdharma/fast-syntax-highlighting
zplugin light buonomo/yarn-completion
