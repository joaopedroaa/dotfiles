remove_and_add (){
  if [ -f "$2" ]; then
      rm $2
      ln -sv ~/dotfiles/$1 $2 &> /dev/null
      echo "successful - $2"

  else
    echo "X - $2"
  fi
}

remove_and_add_sudo (){
    if [ -f "$2" ]; then
      sudo rm $2
      sudo ln -sv ~/dotfiles/$1 $2 &> /dev/null
      echo "successful --- $2"

  else
    echo "X - $2"
  fi
}
