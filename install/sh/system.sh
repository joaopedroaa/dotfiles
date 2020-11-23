create_systemctl () {
  clear
  echo "==========================================  $1  =========================================="
  sudo systemctl enable docker
  sudo systemctl restart docker
  sudo systemctl status $1
}

import_gpt (){
  gpg --keyserver pool.sks-keyservers.net --recv-keys $1
}

echo "========================================== GPT keys  ====================="
# Spotify Public Repository
import_gpt 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
import_gpt 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
import_gpt 8FD3D9A8D3800305A9FFF259D1742AD60D811D58


echo "========================================== Systemctl  ====================="
create_systemctl docker
create_systemctl httpd
create_systemctl mysqld


echo "========================================== Update mirrors list  ====================="
sudo pacman-mirrors --continent



