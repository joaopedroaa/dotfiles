# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias c.="code ." alias C.="c."
alias c..="code . && exit" alias C..="c.."

# yay
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
alias yain='yay -S'
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
alias cdp="cd /home/joaopedro/projects/"
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


alias sizes="sudo du -sh ~/.* | sort -rh | head -10"
