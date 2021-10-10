
echo_separate (){
  length="$((${#1} - 49))"
  printf -v spaces '%*s' $length '';
  echo -e "\n==== $1"  ${spaces// /=}
}


status(){

  if [ "$1" = "--net" ]; then
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

    echo_separate "dig google.com "
    dig google.com
  else
    echo_separate "Clock"
    sudo hwclock --show
    timedatectl

    echo_separate "Keyboard"
    localectl status


  fi
}


update (){
  echo_separate "yay -Syu"
  yay -Syu

  echo_separate "doom upgrade"
  doom -y upgrade

  if [ "$1" = "--all" ]; then
      echo_separate "makepkg vscode insiders"
      cd ~/.cache/yay/visual-studio-code-insiders-bin
      makepkg -si --noconfirm

      echo_separate "cabal update"
      cabal update

      echo_separate "tldr -u"
      tldr -u
  fi
}


alias_gcc_c(){
  gcc $1.c -o $1 && ./$1
}

alias_gcc_cpp(){
  gcc $1.cpp -o $1 -lstdc++ && ./$1
}


alias_git_remote(){
  git remote add origin $1
  git push origin master
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
