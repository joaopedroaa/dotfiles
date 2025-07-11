#!/bin/zsh

# hdln(){
#   hdFilePath=$1
#   homeFilePath=$2

#   if [ ! -d "$homeFilePath" ]; then
#     ln -sv $hdFilePath $homeFilePath &> /dev/null
#   fi
# }

# # XDG
# if [ -d "$XDG_HD_DIR" ]; then
#   hdln $XDG_HD_DIR/Desktop       ~/Desktop
#   hdln $XDG_HD_DIR/Downloads     ~/Downloads
#   hdln $XDG_HD_DIR/Documents     ~/Documents
#   hdln $XDG_HD_DIR/Media         ~/Media
#   hdln $XDG_HD_DIR/Books         ~/Books
#   hdln $XDG_HD_DIR/Projects      ~/Projects

#   export XDG_DESKTOP_DIR="$XDG_HD_DIR/Desktop"
#   export XDG_DOWNLOAD_DIR="$XDG_HD_DIR/Downloads"
#   export XDG_DOCUMENTS_DIR="$XDG_HD_DIR/Documents"
#   export XDG_PICTURES_DIR="$XDG_HD_DIR/Media"
#   export XDG_MUSIC_DIR="$XDG_HD_DIR/Media"
#   export XDG_VIDEOS_DIR="$XDG_HD_DIR/Media"
# else
#   export XDG_DESKTOP_DIR="$HOME/Desktop"
#   export XDG_DOWNLOAD_DIR="$HOME/Downloads"
#   export XDG_DOCUMENTS_DIR="$HOME/Documents"
#   export XDG_PICTURES_DIR="$HOME/Media"
#   export XDG_MUSIC_DIR="$HOME/Media"
#   export XDG_VIDEOS_DIR="$HOME/Media"
# fi

export SHELL="/bin/zsh"

# Default apps
export TERMINAL="kitty"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"
# export TERM="vt100"


# XDG / Home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DOTFILES_DIR="$HOME/dotfiles"
export XDG_HD_DIR="$HOME/"




  export XDG_DESKTOP_DIR="$HOME/Desktop"
  export XDG_DOWNLOAD_DIR="$HOME/Downloads"
  export XDG_DOCUMENTS_DIR="$HOME/Documents"
  export XDG_PICTURES_DIR="$HOME/Media"
  export XDG_MUSIC_DIR="$HOME/Media"
  export XDG_VIDEOS_DIR="$HOME/Media"


# .config
export XMONAD_CONFIG_DIR="$XDG_CONFIG_HOME/xmonad"
export XMONAD_CACHE_DIR="$XDG_CACHE_HOME/xmonad"
export XMONAD_DATA_DIR="$XDG_DATA_HOME/xmonad"


# PATH
export PATH="$PATH:$HOME/Android/Sdk/tools"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.config/rofi/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.deno/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.cabal/bin"
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/anaconda3/bin"
export PATH="$PATH:$FORGIT_INSTALL_DIR/bin"

# Man color
export PAGER="most"


export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"


# /etc/locale.conf & ~/.config/plasma-localerc
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


export FS_MOUNTOPTIONS="uid=1000,gid=1000"
