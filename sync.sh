source ~/dotfiles/.scripts/dotsync.sh
source ~/dotfiles/.scripts/system.sh


if [ "$1" == "x" ]; then
    echo_separate "X11"
    dot_ln  home/.xinitrc                           /
    dot_ln  home/.xprofile                          /

    dot_cp  etc/X11/xorg.conf.d/00-keyboard.conf
    dot_cp  etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dot_cp  etc/X11/xorg.conf
fi

echo_separate "/home"
dot_lnd .doom.d

dot_ln  home/.Xresources                        /
dot_ln  home/.zshenv                            /
dot_ln  home/.zshrc                             /

echo_separate "/home/.config"
dot_lnd .config/alacritty
dot_lnd .config/cava
dot_lna .config/doom
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
dot_lnd .config/xmonad
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

dot_cp etc/httpd/conf/httpd.conf
dot_cp etc/httpd/conf/extra/phpmyadmin.conf
dot_cp etc/lightdm/lightdm.conf
dot_cp etc/lightdm/lightdm-webkit2-greeter.conf

dot_cp etc/modprobe.d/blacklist.conf
dot_cp etc/pacman.d/mirrorlist
dot_cp etc/php/php.ini
dot_cp etc/pulse/default.pa
dot_cp etc/systemd/logind.conf
dot_cp etc/xdg/reflector/reflector.conf


echo_separate "/usr"
dot_cp usr/lib/NetworkManager/conf.d/20-connectivity.conf
dot_cp usr/share/xsessions/plasma-i3.desktop

echo_separate "/srv"
dot_cp srv/http/test.php


echo -e "\n"
