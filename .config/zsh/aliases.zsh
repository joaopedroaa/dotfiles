source ~/dotfiles/.scripts/system.sh

alias up=update
alias color=color
alias status=status
alias i3save=i3_save_workspace
alias i3load=i3_load_workspace

alias ccl=alias_gcc_c
alias cclp=alias_gcc_cpp

alias systemctl-restart=enable_systemctl
alias git-remote=alias_git_remote


# ---- System ----------------------------
alias nv="nvim"
alias t="touch"
alias r="ranger"
alias cat="bat"
alias ca="calcurse"

alias bye="shutdown 0"
alias soon="i3lock -c 000000; systemctl suspend"

alias ctl="systemctl"
alias xev="xev -event keyboard  | egrep -o 'keycode.*\)'"


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
# colorflag="--color=auto"
alias l="lsd -lF ${colorflag}"
alias la="lsd -lAF ${colorflag}"
alias ls="lsd ${colorflag}"

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
alias dots="dotfiles"
alias update-code="cd ~/.cache/yay/visual-studio-code-insiders-bin && makepkg -si"

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
alias agdw="sudo agedu -w --auth none"
alias agds="sudo agedu -s /home/joaopedro"
alias sizes="sudo du -sh ~/.* | sort -rh | head -10"

# MISC
alias findd="sudo find / -iname "
alias xmonadr="xmonad --recompile"
alias selfestival="xsel | festival --tts"
alias disks="sudo gnome-disks"

alias rofi-drun="rofi -show drun"
alias rofi-calc="rofi -show calc"

alias kitty-theme="kitty +kitten themes "
