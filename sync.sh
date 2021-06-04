source ~/dotfiles/.scripts/dotsync.sh
source ~/dotfiles/.scripts/separate_echo.sh

hdln ~/HD/Linux/Books         ~/Books
hdln ~/HD/Linux/Desktop       ~/Desktop
hdln ~/HD/Linux/Documents     ~/Documents
hdln ~/HD/Linux/Downloads     ~/Downloads
hdln ~/HD/Linux/Media         ~/Media
hdln ~/HD/Linux/Pictures      ~/Pictures
hdln ~/HD/Linux/Projects      ~/Projects

if [ "$1" == "x" ]; then
    separate_echo "X11"
    dotln .xinitrc
    dotln .xprofile

    dotcp etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dotcp etc/X11/xorg.conf
fi


separate_echo "/home"

dotlnd .config/alacritty
dotlnd .config/cava
dotln  .config/dolphin/dolphinrc               .config/dolphinrc
dotlnd .config/dunst
dotlnd .config/flameshot
dotlnd .config/i3
dotlnd .config/i3blocks
dotlnd .config/kitty
dotlnd .config/lf
dotlnd .config/nvim
dotln  .config/pavucontrol/pavucontrol.ini     .config/pavucontrol.ini
dotln  .config/picom/picom.conf                .config/picom.conf
dotlnd .config/neofetch
dotlnd .config/polybar
dotlnd .config/ranger
dotlnd .config/redshift
dotlnd .config/rofi
dotlnd .config/xmobar
dotln  .config/yakuake/yakuakerc               .config/yakuakerc
dotlnd .config/zathura
dotln  .config/user-dirs.dirs

dotlnd .doom.d
dotlnd .xmonad


dotln .gitconfig
dotln .zshenv
dotln .zshrc


separate_echo "/etc"
dotcp etc/lightdm/lightdm-webkit2-greeter.conf
dotcp etc/lightdm/lightdm.conf
dotcp etc/httpd/conf/httpd.conf
dotcp etc/httpd/conf/extra/phpmyadmin.conf
dotcp etc/pulse/default.pa
dotcp etc/php/php.ini

dotcp etc/hosts
dotcp etc/locale.gen
dotcp etc/sysctl.conf

separate_echo "/usr"
dotcp usr/lib/NetworkManager/conf.d/20-connectivity.conf

separate_echo "/srv"
dotcp srv/http/test.php


echo -e "\n"


