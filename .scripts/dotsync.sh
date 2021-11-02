   messageOk="|:ok |"
messageError="|:error |"

 message_ln=" ln  | 📄 |"
message_lnd=" ln  | 📁 |"
message_lna=" ln  | 📁 |"
 message_cp=" cp  | 📄 |"

dot_lnd(){
  dotsDirPath=$HOME/dotfiles/$1
  homeDirPath=$HOME/$1
  [ $2 ] && homeDirPath=$HOME/$2

  [ ! -d "$homeDirPath" ] && mkdir $homeDirPath



  if [ -d "$homeDirPath" ]; then
    ln -sv $dotsDirPath/* $homeDirPath
    echo "$messageOk $message_lnd $1"
  else
    echo "$messageError $homeDirPath"
  fi

}



dot_ln(){
  dotsFilePath=$HOME/dotfiles/$1
  homeFilePath=$HOME/$1
  [ $2 ] && homeFilePath=$HOME/$2
  homeDirPath=$(dirname "$homeFilePath")

  [ ! -d "$homeDirPath" ] && mkdir $homeDirPath
  [ -f "$homeFilePath" ] && rm $homeFilePath

  if [ -d "$homeDirPath" ]; then
    ln -sv $dotsFilePath $homeFilePath
    echo "$messageOk $message_ln $1 "
  else
    echo "$messageError  $homeFilePath"
  fi
}


dot_lna(){
  dotsDirPath=$HOME/dotfiles/$1
  homeDirPath=$HOME/$1
  [ $2 ] && homeDirPath=$HOME/$2

  [ ! -d "$homeDirPath" ] && mkdir $homeDirPath &> /dev/null

  if [ -d "$homeDirPath" ]; then
    for dotsFilePath in $(tree -fi $dotsDirPath/*); do
      homeFilePath="${dotsFilePath/"/joaopedro/dotfiles"/"/joaopedro"}"

      if [ -f "$dotsFilePath" ]; then
        [ -f "$homeFilePath" ] && rm $homeFilePath
        ln -sv $dotsFilePath $homeFilePath &> /dev/null
        # echo "ln $dotsFilePath $homeFilePath"
      fi

      if [ -d "$dotsFilePath" ]; then
        mkdir -p $homeFilePath &> /dev/null
        # echo "mkdir $homeFilePath"
      fi
    done;

    echo "$messageOk $message_lna $1"
  else
    echo "$messageError $homeDirPath"
  fi
}



dot_cp (){
  dotsFilePath=$HOME/dotfiles/$1
  destFilePath=/$1
  destDirPath=$(dirname "$destFilePath")

  if [ -d $destDirPath ]; then
      sudo cp $dotsFilePath $destDirPath
      echo "$messageOk $message_cp $destFilePath"
  else
      echo "$messageError /$destFilePath"
  fi

}


hdln(){
  hdFilePath=$1
  homeFilePath=$2

  if [ ! -d "$homeFilePath" ]; then
    ln -sv $hdFilePath $homeFilePath &> /dev/null
    # echo "$messageOk ln - dir | $1 "
    # echo "$messageError  $homeFilePath"
  fi
}
