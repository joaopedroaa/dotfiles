source ~/dotfiles/.scripts/dotsync.sh
source ~/dotfiles/.scripts/system.sh

hdln ~/HD/Linux/Desktop       ~/Desktop
hdln ~/HD/Linux/Documents     ~/Documents
hdln ~/HD/Linux/Downloads     ~/Downloads
hdln ~/HD/Linux/Books         ~/Books
hdln ~/HD/Linux/Media         ~/Media
hdln ~/HD/Linux/Projects      ~/Projects

if [ "$1" == "x" ]; then
    echo_separate "X11"
    dot_ln .xinitrc
    dot_ln .xprofile

    dot_cp  etc/X11/xorg.conf.d/00-keyboard.conf
    dot_cp  etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dot_cp  etc/X11/xorg.conf
fi

echo_separate "/home"
dot_lnd .doom.d
dot_lnd .xmonad

dot_ln .zshenv
dot_ln .zshrc


echo_separate "/home/.config"
dot_lnd .config/alacritty
dot_lnd .config/cava
dot_lna .config/dunst
dot_lna .config/flameshot
dot_lnd .config/i3
dot_lnd .config/i3blocks
dot_lnd .config/kitty
dot_lnd .config/lf
dot_lnd .config/nvim
dot_lnd .config/neofetch
dot_lnd .config/polybar
dot_lnd .config/ranger
dot_lnd .config/redshift
dot_lnd .config/rofi
dot_lnd .config/xmobar
dot_lnd .config/zathura

dot_ln  .config/dolphin/dolphinrc                .config/dolphinrc
dot_ln  .config/git/.gitconfig                   .gitconfig
dot_ln  .config/pavucontrol/pavucontrol.ini      .config/pavucontrol.ini
dot_ln  .config/picom/picom.conf                 .config/picom.conf
dot_ln  .config/.mostrc                          .mostrc
dot_ln  .config/tmux/.tmux.conf                  .tmux.conf
dot_ln  .config/yakuake/yakuakerc                .config/yakuakerc
dot_ln  .config/user-dirs.dirs
dot_ln  .config/plasma-localerc


echo_separate "/etc"
dot_cp etc/hosts
dot_cp etc/locale.conf
dot_cp etc/locale.gen
dot_cp etc/pacman.conf
dot_cp etc/sysctl.conf
dot_cp etc/vconsole.conf

dot_cp etc/lightdm/lightdm-webkit2-greeter.conf
dot_cp etc/lightdm/lightdm.conf
dot_cp etc/httpd/conf/httpd.conf
dot_cp etc/httpd/conf/extra/phpmyadmin.conf
dot_cp etc/pulse/default.pa
dot_cp etc/php/php.ini


echo_separate "/usr"
dot_cp usr/lib/NetworkManager/conf.d/20-connectivity.conf

echo_separate "/srv"
dot_cp srv/http/test.php


echo -e "\n"
