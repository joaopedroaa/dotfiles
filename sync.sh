[ ! -f ~/.local/bin/stot ] && ln -sv ~/dotfiles/bin/stot ~/.local/bin/stot


if [ "$1" == "x" ]; then
    echo_separate "X11"
    stot -l  home/.xinitrc                           /
    stot -l  home/.xprofile                          /

    stot -c  etc/X11/xorg.conf.d/00-keyboard.conf
    stot -c  etc/X11/xorg.conf.d/50-mouse-acceleration.conf
    stot -c  etc/X11/xorg.conf
fi

echo_separate "/home"
stot -l home/.nvidia-settings-rc                /
stot -l home/.screenlayout-main.sh              /
stot -l home/.Xresources                        /
stot -l home/.zshenv                            /
stot -l home/.zshrc                             /

echo_separate "/home/.config"
stot -l .config/alacritty
stot -l .config/BetterDiscord
stot -l .config/cava
stot -l .config/doom
stot -l .config/dunst
stot -l .config/flameshot
stot -l .config/i3
stot -l .config/i3blocks
stot -l .config/kitty
stot -l .config/lf
stot -l .config/mpv
stot -l .config/nvim
stot -l .config/neofetch
stot -l .config/polybar
stot -l .config/ranger
stot -l .config/redshift
stot -l .config/rofi
stot -l .config/xmobar
stot -l .config/xmonad
stot -l .config/zathura

stot -l .config/firefox/user.js                  .mozilla/firefox/vdhmokqy.default-nightly/user.js
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
stot -l bin .local/bin

echo_separate "/boot"
stot -c boot/efi/EFI/refind/refind.conf

echo_separate "/etc"
stot -c etc/dhcpcd.conf
stot -c etc/hosts
stot -c etc/locale.conf
stot -c etc/locale.gen
stot -c etc/pacman.conf
stot -c etc/resolv.conf
stot -c etc/sysctl.conf
stot -c etc/vconsole.conf

stot -c etc/httpd/conf/httpd.conf
stot -c etc/httpd/conf/extra/phpmyadmin.conf
stot -c etc/lightdm/lightdm.conf
stot -c etc/lightdm/lightdm-webkit2-greeter.conf

stot -c etc/modprobe.d/blacklist.conf
stot -c etc/pacman.d/mirrorlist
stot -c etc/php/php.ini
stot -c etc/pulse/default.pa
stot -c etc/systemd/logind.conf
stot -c etc/xdg/reflector/reflector.conf


echo_separate "/usr"
stot -c usr/lib/NetworkManager/conf.d/20-connectivity.conf

echo_separate "/srv"
stot -c srv/http/test.php


echo -e "\n"
