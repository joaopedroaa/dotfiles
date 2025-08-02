_exists() {
  command -v $1 > /dev/null 2>&1
}

alias up=update
alias systemctl-restart=systemctl-enable
alias teams="teams --disable-seccomp-filter-sandbox"
alias get-class="xprop | grep \"WM_CLASS\""

# ---- System ----------------------------
alias t="touch"
alias cat="bat"
alias r="ranger"
alias ca="calcurse"
alias help="tldr"
alias dir="dir --color "
alias rms="shred -uzvn3"

alias iexm="iex -S mix"

alias bye="shutdown 0"
alias soon="i3lock -c 000000; systemctl suspend"

alias xev="xev -event keyboard  | egrep -o 'keycode.*\)'"

alias x+="chmod +x"
alias x++="sudo chmod +x"
alias -- +x="chmod +x"
alias -- ++x="sudo chmod +x"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c.="code ."
alias c..="code . && exit"

alias n="nvim"
alias n.="nvim ."

alias e="$EDITOR"
alias e.="$EDITOR ."
alias e..="$EDITOR . && exit"


# Folder Shortcuts
alias cdd="cd $XDG_HD_DIR/Desktop/"
alias cdhd="cd $XDG_HD_DIR"
alias cdl="cd $XDG_HD_DIR/Projects/Local"
alias cdh="cd $XDG_HD_DIR/Projects/Github"
alias cdda="cd $XDG_HD_DIR/Projects/dasa"
alias cdm="cd /home/joaopedro/Docs/medalta"


# ls  -  colorflag="--color=auto"
alias l="lsd -a ${colorflag}"
alias ls="lsd -lF ${colorflag}"
alias lsa="lsd -lAF ${colorflag}"


# tar
alias tarzip='unzip'
alias tarx='tar -xvf'
alias targz='tar -zxvf'
alias tarbz2='tar -jxvf'


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


# pacman
alias pacman-reset='sudo pacman -Syyu $(pacman -Qnq) --overwrite "*"'


# ---- Apps ----------------------------

# Code
alias code="code"
alias dots="code $XDG_DOTFILES_DIR"
alias packs="code ~/packages"


# Scripts
alias syncd="sh $XDG_DOTFILES_DIR/sync.sh"


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
alias ageduh="sudo agedu -s /home/joaopedro -w --auth none"
alias agedus="sudo agedu -s / -w --auth none"
alias sizes="sudo du -sh ~/.* | sort -rh | head -10"


# MISC
alias findd="sudo find / -iname "
alias xmonadr="xmonad --recompile"
alias selfestival="xsel | festival --tts"
alias kitty-theme="kitty +kitten themes "

alias rofi-drun="rofi -show drun"
alias rofi-calc="rofi -show calc"

alias disks="sudo gnome-disks"

alias infos="inxi & inxi -G"
alias char="gucharmap"
