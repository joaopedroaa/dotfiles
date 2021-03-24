source ~/dotfiles/sh/utils/separate_echo.sh
source ./utils/create_systemctl.sh
source ./utils/import_gpt.sh

separate_echo "GPT keys"
import_gpt 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 # Spotify Public Repository
import_gpt 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
import_gpt 8FD3D9A8D3800305A9FFF259D1742AD60D811D58
import_gpt EF6E286DDA85EA2A4BA7DE684E2C6E8793298290 # Tor

separate_echo "Systemctl"
create_systemctl docker
create_systemctl httpd
create_systemctl mysqld
