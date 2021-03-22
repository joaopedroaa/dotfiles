dotln (){
  destination=$(dirname "$2")

  [ ! -d "$destination" ] && mkdir $destination &> /dev/null
  [ ! -f "$2" ] && touch $2

  if [ -f "$2" ]; then
    rm $2
    ln -sv ~/dotfiles/$1 $2 &> /dev/null
    echo "successful - $2"

  else
    echo "X - $2"
  fi
}

dotcp (){
  destination=$(dirname "/$1")

  if [ -d $destination ]; then
      sudo cp ~/dotfiles/$1 $destination
      echo "successful -- /$1"

  else
      echo "X - /$1"
  fi

}
