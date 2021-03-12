source ~/dotfiles/sh/utils/remove_and_add.sh
source ~/dotfiles/sh/utils/separate_echo.sh

separate_echo "/home"
remove_and_add .i3/config                       ~/.i3/config
remove_and_add .i3/.i3blocks.conf               ~/.i3blocks.conf
remove_and_add .i3/.i3status.conf               ~/.i3status.conf

remove_and_add .xmonad/xmobar/xmobarrc          ~/.config/xmobar/xmobarrc
remove_and_add .xmonad/xmonad.hs                ~/.xmonad/xmonad.hs

remove_and_add .xprofile                        ~/.xprofile
