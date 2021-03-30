dotln(){
  dotsPath=$1
  finalPath=$HOME/$1
  [ $2 ] && finalPath=$HOME/$2
  destinationPath=$(dirname "$finalPath")


  [ ! -d "$destinationPath" ] && mkdir $destinationPath &> /dev/null

  if [ -d "$destinationPath" ]; then
    [ -f "$finalPath" ] && rm $finalPath
    ln -sv $HOME/dotfiles/$dotsPath $finalPath &> /dev/null
    echo "successful - $finalPath"
  else
    echo "X - $finalPath"
  fi
}


dotcp (){
  finalPath=/$1
  destinationPath=$(dirname "$finalPath")

  if [ -d $destinationPath ]; then
      sudo rm $finalPath
      sudo cp $HOME/dotfiles/$1 $destinationPath
      echo "successful - cp - $finalPath"

  else
      echo "X - /$finalPath"
  fi

}
