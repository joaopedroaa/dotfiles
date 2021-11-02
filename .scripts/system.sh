source ~/.zinit/bin/zinit.zsh

echo_separate (){
  length="$((${#1} - 49))"
  printf -v spaces '%*s' $length '';
  echo -e "\n==== $1"  ${spaces// /=}
}


status(){
  if [ "$1" = "" ]; then

  elif [ "$1" = "virtual" ]; then
    VBoxManage setextradata global GUI/SuppressMessages "all"

  elif [ "$1" = "disk" ]; then
    echo_separate "duf"
    duf

  elif [ "$1" = "net" ]; then
    echo_separate "httpstat google.com"
    httpstat https://www.google.com

    echo_separate "lspci -v"
    lspci -vv | grep -A11 "Ethernet controller"

    echo_separate "cat /etc/modprobe.d/blacklist.conf"
    cat /etc/modprobe.d/blacklist.conf

    echo_separate "cat /usr/lib/modprobe.d/r8168.conf"
    cat /usr/lib/modprobe.d/r8168.conf

    echo_separate "dmesg | grep r8169"
    sudo dmesg | grep r8169

    echo_separate "dmesg | grep r8168"
    sudo dmesg | grep r8168

  else
    echo_separate "Clock"
    sudo hwclock --show
    timedatectl

    echo_separate "Keyboard"
    localectl status

    echo_separate "Locale"
    locale

  fi
}



update (){
  [ "$1" = "code" ] && echo_separate "makepkg vscode insiders" \
                    && cd ~/.cache/yay/visual-studio-code-insiders-bin \
                    && makepkg -si --noconfirm

  echo_separate "yay -Syu"
  yay -Syu

  echo_separate "zinit"
  zinit self-update
  zinit update --parallel 80

  echo_separate "doom upgrade"
  doom -y upgrade


  if [ "$1" = "all" ]; then
      echo_separate "cabal update"
      cabal update

      echo_separate "tldr -u"
      tldr -u
  fi
}


alias_gcc_c(){
  filename="${1%.*}"
  gcc $filename.c -o $filename && ./$filename
}

alias_gcc_cpp(){
  filename="${1%.*}"
  gcc $filename.cpp -o $filename -lstdc++ && ./$filename
}


alias_git_remote(){
  git remote add origin $1
  git push origin master
}


color(){
  T='txt'   # The test text

  echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";
  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' '1;32m' \
  '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
}


####################################################
#                       I3                         #
####################################################

i3_save_workspace (){
  filename=$1
  [ $2 ] && filename=$2

  i3-save-tree --workspace $1 > ~/dotfiles/.config/i3/layouts/$filename.json
  echo "Workspace $1 saved (i3/layouts/$filename.json)"
}


i3_load_workspace(){
  filename=$1
  [ $2 ] && filename=$2

  i3-msg "workspace $1; append_layout ~/dotfiles/.config/i3/layouts/$filename.json"
}


####################################################
#                       Config                         #
####################################################


enable_systemctl () {
  clear
  echo "========================================  $1  ========================================"
  sudo systemctl enable $1
  sudo systemctl restart $1
  sleep 3
  sudo systemctl status $1
}

import_gpt (){
  gpg --keyserver pool.sks-keyservers.net --recv-keys $1
}
