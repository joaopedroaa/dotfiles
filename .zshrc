[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "

export ZSH="/home/pedro/.oh-my-zsh"
export PATH="$PATH:$(yarn global bin)"
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:`pwd`/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/home/pedro/anaconda3/bin"

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

alias clean="sudo apt-get clean"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias autoremove="sudo apt autoremove"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

plugins=(
  git
  dnf
  fzf
  )

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zdharma/fast-syntax-highlighting