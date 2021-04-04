source ~/dotfiles/sh/scripts/separate_echo.sh

create_systemctl () {
  clear
  echo "========================================  $1  ========================================"
  sudo systemctl enable $1
  sudo systemctl restart $1
  sudo systemctl status $1
}

import_gpt (){
  gpg --keyserver pool.sks-keyservers.net --recv-keys $1
}


separate_echo "GPT keys"
import_gpt 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 # Spotify Public Repository
import_gpt 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
import_gpt 8FD3D9A8D3800305A9FFF259D1742AD60D811D58
import_gpt EF6E286DDA85EA2A4BA7DE684E2C6E8793298290 # Tor

separate_echo "Systemctl"
create_systemctl docker
create_systemctl httpd
create_systemctl mysqld
