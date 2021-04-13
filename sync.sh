source ~/dotfiles/.scripts/dotsync.sh
source ~/dotfiles/.scripts/separate_echo.sh

if [ "$1" == "x" ]; then
    separate_echo "X11"
    dotln .xinitrc
    dotln .xprofile

    dotcp etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dotcp etc/X11/xorg.conf
fi


separate_echo "/home"
dotln .config/dolphin/dolphinrc               .config/dolphinrc
dotln .config/pavucontrol/pavucontrol.ini     .config/pavucontrol.ini
dotln .config/picom/picom.conf                .config/picom.conf
dotln .config/yakuake/yakuadkerc               .config/yakuakerc
dotln .config/user-dirs.dirs

dotlnd .config/cava
dotlnd .config/dunst
dotlnd .config/flameshot
dotlnd .config/i3blocks
dotlnd .config/kitty
dotlnd .config/lf
dotlnd .config/nvim
dotlnd .config/neofetch
dotlnd .config/polybar
dotlnd .config/redshift
dotlnd .config/rofi
dotlnd .config/xmobar

dotlnd .doom.d
dotlnd .i3
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



