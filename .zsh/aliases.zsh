# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c.="code ." alias C.="c."
alias c..="code . && exit" alias C..="c.."

# yay
alias yaup="yay -Syyu"
alias yaupp="yay -Syyuu"
alias yain='yay -S'

alias yaconf='yay -Pg'
alias yains='yay -U'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yaorph='yay -Qtd'
alias yaupg='yay -Syu'
alias yasu='yay -Syu --noconfirm'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yainsd='yay -S --asdeps'
alias yamir='yay -Syy'

# tar
alias tarzip='unzip'
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf'

# Code
alias code="code-insiders"
alias dotfiles="code ~/dotfiles"

# Code / Config
alias cfghttpd="code /etc/httpd/conf/httpd.conf"
alias cfghosts="code /etc/hosts"

# Shortcuts
alias cde="cd /run/media/joaopedro/External"
alias cdp="cd /run/media/joaopedro/22E03A13183DAEAE/Project/"
alias cdd="cd ~/Desktop"

# Docker
alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

# Elixir / mix phx
alias mpn="mix phx.new"
alias mps="mix phx.server"

# Elixir / mix deps
alias mdg="mix deps.get"

# Elixir / mix ecto
alias mec="mix ecto.create "
alias mes="mix ecto.setup"
alias mem="mix ecto.migrate"

# Elixir / mix ecto.gen
alias megm="mix ecto.gen.migration"

# ls
alias l="ls -lF ${colorflag}"
alias la="ls -lAF ${colorflag}"
alias ls="command ls ${colorflag}"
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# playerctl
alias plspotify="playerctl -p spotify "

alias plplay="plspotify play-pause"
alias plnext="plspotify next"
alias plprev="plspotify previous"
alias plvolu="plspotify volume"

# Console
alias :q="exit"


# MISC
alias sizes="sudo du -sh ~/.* | sort -rh | head -10"
alias commandshistory="history | awk '{print $2}' | sort | uniq -c | sort -rn | head -10"
alias nvxine="grep -i xine /var/log/Xorg.0.log"
alias clearhd="sudo ntfsfix -b /dev/sdb1"

alias findd="sudo find / -iname "
alias xmonadr="xmonad --recompile"


alias gccc="sh ~/dotfiles/sh/utils/langs/c.sh"
