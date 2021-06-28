

echo_separate (){
  echo -e "\n==== $1 =============================================="
}


status(){
  echo_separate "localectl"
  localectl status
}


update (){
  echo_separate "yay -Syyuu"
  yay -Syyuu

  echo_separate "doom upgrade"
  doom -y upgrade

  if [ "$1" = "c" ]; then
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


i3_test_workspace(){
  filename=$1
  [ $2 ] && filename=$2

  i3-msg "workspace $1; append_layout ~/dotfiles/.config/i3/layouts/$filename.json"
}
