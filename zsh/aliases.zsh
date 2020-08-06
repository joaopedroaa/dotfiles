# Easier navigation: .., ..., ...., ....., cd. and cd..
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias c.="code ." alias C.="c."
alias c..="code . && exit" alias C..="c.."

# yay
alias yaconf='yay -Pg'
alias yaupg='yay -Syu'
alias yasu='yay -Syu --noconfirm'
alias yain='yay -S'
alias yains='yay -U'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yaorph='yay -Qtd'
alias yainsd='yay -S --asdeps'
alias yamir='yay -Syy'

# tar aliases
alias tarzip='unzip'
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf' 

# Code
alias code="code-insiders"
alias zshrc="code ~/dotfiles/.zshrc"
alias hosts="code /etc/hosts"
alias dotfiles="code ~/dotfiles"

# Shortcuts
alias cde="cd /run/media/joaopedro/External"
alias cdf="cde && cd Manjaro/folder"
alias cdp="cde && cd Manjaro/projects"
alias cdd="cd ~/Desktop"

# Docker
alias dc="docker-compose"
alias apacheConfig="code /etc/httpd/conf/httpd.conf"

# MISC
alias update="yay -Syyu; yarn global upgrade"

# LS
alias l="ls -lF ${colorflag}"
alias la="ls -lAF ${colorflag}"
alias ls="command ls ${colorflag}"
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
