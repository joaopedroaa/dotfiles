# ---- System ----------------------------
alias up="yay -Syyu ; doom upgrade ; cabal update"
alias :q="exit" alias :Q=":q"
alias ctl="systemctl"
alias xev="xev -event keyboard  | egrep -o 'keycode.*\)'"
alias t="touch"

alias bye="shutdown 0"
alias soon="systemctl suspend"

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
alias cdd="cd $XDG_HD_DIR/Desktop/"
alias cde="cd $XDG_HD_DIR"
alias cdl="cd $XDG_HD_DIR/Projects/Local"
alias cdh="cd $XDG_HD_DIR/Projects/Github"

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
alias dotfiles="code $XDG_DOTFILES_DIR"
alias update-code="cd ~/.cache/yay/visual-studio-code-insiders-bin && makepkg -si"

# Scripts
alias syncd="sh $XDG_DOTFILES_DIR/sync.sh"
alias ccl="sh $XDG_DOTFILES_DIR/.scripts/alias_gcc.sh"
alias gremote="sh $XDG_DOTFILES_DIR/.scripts/alias_git_remote.sh"

# Docker
alias dr="docker run"
alias ds="docker start"
alias dst="docker stop"
alias di="docker image"
alias dv="docker volume"

alias dls="docker ps -a"
alias drmall="docker rm $(docker ps -a -q)"

alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

# Elixir
alias mcr="mix credo"
alias mco="mix compile"
alias mf="mix format"

alias mdg="mix deps.get"
alias mec="mix ecto.create "
alias mes="mix ecto.setup"
alias mem="mix ecto.migrate"
alias megm="mix ecto.gen.migration"

alias mpn="mix phx.new"
alias mps="mix phx.server"

# Playerctl
alias plspotify="playerctl -p spotify "
alias plplay="plspotify play-pause"
alias plnext="plspotify next"
alias plprev="plspotify previous"
alias plvolu="plspotify volume"

# Du / Agedu
alias agdw="sudo agedu -w --auth none"
alias agds="sudo agedu -s /home/joaopedro"
alias sizes="sudo du -sh ~/.* | sort -rh | head -10"

# MISC
alias findd="sudo find / -iname "
alias xmonadr="xmonad --recompile"
alias selfestival="xsel | festival --tts"
