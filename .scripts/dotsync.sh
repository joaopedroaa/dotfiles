okMess="|:ok |"
errorMess="|   :error   |"

dotln(){
  dotsFilePath=$HOME/dotfiles/$1
  homeFilePath=$HOME/$1
  [ $2 ] && homeFilePath=$HOME/$2
  homeDirPath=$(dirname "$homeFilePath")

  [ ! -d "$homeDirPath" ] && mkdir $homeDirPath &> /dev/null
  [ -f "$homeFilePath" ] && rm $homeFilePath

  if [ -d "$homeDirPath" ]; then
    ln -sv $dotsFilePath $homeFilePath &> /dev/null
    echo "$okMess ln - file | $1 "
  else
    echo "$errorMess  $homeFilePath"
  fi
}

dotlnd(){
  dotsDirPath=$HOME/dotfiles/$1
  homeDirPath=$HOME/$1
  [ $2 ] && homeDirPath=$HOME/$2

  [ ! -d "$homeDirPath" ] && mkdir $homeDirPath &> /dev/null

  if [ -d "$homeDirPath" ]; then
    ln -sv $dotsDirPath/* $homeDirPath &> /dev/null
    echo "$okMess ln - dir  | $1"
  else
    echo "$errorMess $homeDirPath"
  fi

}


dotcp (){
  dotsFilePath=$HOME/dotfiles/$1
  destFilePath=/$1
  destDirPath=$(dirname "$destFilePath")

  if [ -d $destDirPath ]; then
      sudo cp $dotsFilePath $destDirPath
      echo "$okMess cp | $destFilePath"
  else
      echo "$errorMess /$destFilePath"
  fi

}
