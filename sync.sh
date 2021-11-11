source ~/dotfiles/.scripts/dotsync.sh
[ ! -f ~/.local/bin/stot ] && ln -sv ~/dotfiles/.local/bin/stot ~/.local/bin/stot



if [ "$1" == "x" ]; then
    echo_separate "X11"
    dot_ln  home/.xinitrc                           /
    dot_ln  home/.xprofile                          /

    dot_cp  etc/X11/xorg.conf.d/00-keyboard.conf
    dot_cp  etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    dot_cp  etc/X11/xorg.conf
fi

echo_separate "/home"
stot -l home/.Xresources                        /
stot -l home/.zshenv                            /
stot -l home/.zshrc                             /

echo_separate "/home/.config"
stot -l .config/alacritty
stot -l .config/cava
stot -l .config/doom
stot -l .config/dunst
stot -l .config/flameshot
stot -l .config/i3
stot -l .config/i3blocks
stot -l .config/kitty
stot -l .config/lf
stot -l .config/nvim
stot -l .config/neofetch
stot -l .config/polybar
stot -l .config/ranger
stot -l .config/redshift
stot -l .config/rofi
stot -l .config/xmobar
stot -l .config/xmonad
stot -l .config/zathura

stot -l .config/dolphin/dolphinrc                .config/dolphinrc
stot -l .config/git/.gitconfig                   .gitconfig
stot -l .config/pavucontrol/pavucontrol.ini      .config/pavucontrol.ini
stot -l .config/picom/picom.conf                 .config/picom.conf
stot -l .config/most/.mostrc                     .mostrc
stot -l .config/tmux/.tmux.conf                  .tmux.conf
stot -l .config/yakuake/yakuakerc                .config/yakuakerc

stot -l .config/user-dirs.dirs
stot -l .config/plasma-localerc

echo_separate "/home/.local"
stot -l .local/bin

echo_separate "/etc"
stot -c etc/dhcpcd.conf
dot_cp etc/hosts
stot -c etc/locale.conf
stot -c etc/locale.gen
dot_cp etc/pacman.conf
dot_cp etc/resolv.conf
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

echo_separate "/srv"
dot_cp srv/http/test.php


echo -e "\n"
