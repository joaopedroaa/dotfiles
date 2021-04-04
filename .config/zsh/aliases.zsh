function_update () {
  yay -Syyu
  doom upgrade
  cabal update
}

# ---- System ----------------------------
alias up=function_update
alias :q="exit" alias :Q=":q"
alias ctl="systemctl"
alias xev="xev -event keyboard  | egrep -o 'keycode.*\)'"
alias t="touch"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c.="code ." alias C.="c."
alias c..="code . && exit" alias C..="c.."

# tar
alias tarzip='unzip'
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf'

# Shortcuts
pathExternal="/home/joaopedro/hd1/Linux"
alias cde="cd ${pathExternal}"
alias cdl="cd ${pathExternal}/Projects/Local"
alias cdh="cd ${pathExternal}/Projects/Github"
alias cdd="cd ~/Desktop"

# ls
alias l="ls -lF ${colorflag}"
alias la="ls -lAF ${colorflag}"
alias ls="command ls ${colorflag}"
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# yay
alias yas='yay -S'
alias yaup="yay -Syyu"
alias yaupp="yay -Syyuu"
alias yacache='yay -Sc'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yainsd='yay -S --asdeps'
alias yamir='yay -Syy'
alias yaconf='yay -Pg'
alias yains='yay -U'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yaorph='yay -Qtd'


# ---- Apps ----------------------------

# Code
alias code="code-insiders"

# Code / Config
alias dotfiles="code ~/dotfiles"
alias cfghttpd="code /etc/httpd/conf/httpd.conf"

# Docker
alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

# Elixir / mix
alias mdg="mix deps.get"
alias mec="mix ecto.create "
alias mes="mix ecto.setup"
alias mem="mix ecto.migrate"
alias megm="mix ecto.gen.migration"

# Elixir / mix / phoenix
alias mpn="mix phx.new"
alias mps="mix phx.server"

# Playerctl
alias plspotify="playerctl -p spotify "
alias plplay="plspotify play-pause"
alias plnext="plspotify next"
alias plprev="plspotify previous"
alias plvolu="plspotify volume"


# dotfiles
alias syncd="sh ~/dotfiles/sync.sh"

# dotfiles / Scripts
pathScripts="~/dotfiles/sh/scripts"
alias ccl="sh ${pathScripts}/alias_gcc.sh"
alias gitrm="sh ${pathScripts}/alias_git_remote.sh"


# MISC
alias findd="sudo find / -iname "
alias xmonadr="xmonad --recompile"

# Du / Agedu
alias agdw="sudo agedu -w --auth none"
alias agds="sudo agedu -s /home/joaopedro"

alias sizes="sudo du -sh ~/.* | sort -rh | head -10"
