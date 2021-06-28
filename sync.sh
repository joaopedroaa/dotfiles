source ~/dotfiles/.scripts/dotsync.sh
source ~/dotfiles/.scripts/system.sh

hdln ~/HD/Linux/Books         ~/Books
hdln ~/HD/Linux/Desktop       ~/Desktop
hdln ~/HD/Linux/Documents     ~/Documents
hdln ~/HD/Linux/Downloads     ~/Downloads
hdln ~/HD/Linux/Media         ~/Media
hdln ~/HD/Linux/Pictures      ~/Pictures
hdln ~/HD/Linux/Projects      ~/Projects

if [ "$1" == "x" ]; then
    echo_separate "X11"
    dotln .xinitrc
    dotln .xprofile

    dotcp etc/X11/xorg.conf.d/00-keyboard.conf
    dotcp etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dotcp etc/X11/xorg.conf
fi


echo_separate "/home"

dotlnd .config/alacritty
dotlnd .config/cava
dotln  .config/dolphin/dolphinrc                .config/dolphinrc
dotlnd .config/dunst
dotlnd .config/flameshot
dotln  .config/git/.gitconfig                   .gitconfig
dotlnd .config/i3
dotlnd .config/i3blocks
dotlnd .config/kitty
dotlnd .config/lf
dotlnd .config/nvim
dotln  .config/pavucontrol/pavucontrol.ini      .config/pavucontrol.ini
dotln  .config/picom/picom.conf                 .config/picom.conf
dotlnd .config/neofetch
dotlnd .config/polybar
dotlnd .config/ranger
dotlnd .config/redshift
dotlnd .config/rofi
dotln  .config/tmux/.tmux.conf                  .tmux.conf
dotlnd .config/xmobar
dotln  .config/yakuake/yakuakerc                .config/yakuakerc
dotlnd .config/zathura
dotln  .config/user-dirs.dirs
dotln  .config/plasma-localerc

dotlnd .doom.d
dotlnd .xmonad

dotln .zshenv
dotln .zshrc


echo_separate "/etc"
dotcp etc/lightdm/lightdm-webkit2-greeter.conf
dotcp etc/lightdm/lightdm.conf
dotcp etc/httpd/conf/httpd.conf
dotcp etc/httpd/conf/extra/phpmyadmin.conf
dotcp etc/pulse/default.pa
dotcp etc/php/php.ini

dotcp etc/hosts
dotcp etc/locale.conf
dotcp etc/locale.gen
dotcp etc/sysctl.conf
dotcp etc/vconsole.conf

echo_separate "/usr"
dotcp usr/lib/NetworkManager/conf.d/20-connectivity.conf

echo_separate "/srv"
dotcp srv/http/test.php


echo -e "\n"
