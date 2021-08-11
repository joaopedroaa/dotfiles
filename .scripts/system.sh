
echo_separate (){
  length="$((${#1} - 49))"
  printf -v spaces '%*s' $length '';
  echo -e "\n==== $1"  ${spaces// /=}
}


status(){
  echo_separate "Clock"
  sudo hwclock --show
  timedatectl

  echo_separate "Keyboard"
  localectl status
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


alias_gcc(){
  gcc $1.c -o $1 && ./$1
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
