source ~/dotfiles/sh/utils/remove_and_add.sh
source ~/dotfiles/sh/utils/separate_echo.sh

separate_echo "/home"
remove_and_add .config/flameshot/flameshot.ini              ~/.config/flameshot/flameshot.ini
remove_and_add .config/neofetch/config.conf                 ~/.config/neofetch/config.conf
remove_and_add .config/redshift.conf                        ~/.config/redshift.conf
remove_and_add .config/picom.conf                           ~/.config/picom.conf
remove_and_add .config/yakuakerc                            ~/.config/yakuakerc

remove_and_add .config/polybar/config                       ~/.config/polybar/config
remove_and_add .config/polybar/launch.sh                    ~/.config/polybar/launch.sh

remove_and_add .doom.d/config.el                            ~/.doom.d/config.el
remove_and_add .doom.d/custom.el                            ~/.doom.d/custom.el
remove_and_add .doom.d/init.el                              ~/.doom.d/init.el
remove_and_add .doom.d/packages.el                          ~/.doom.d/packages.el

remove_and_add .gitconfig                                   ~/.gitconfig
remove_and_add .zshenv                                      ~/.zshenv
remove_and_add .zshrc                                       ~/.zshrc

separate_echo "/"
remove_and_add_sudo etc/lightdm/lightdm-webkit2-greeter.conf
remove_and_add_sudo etc/pulse/default.pa
remove_and_add_sudo etc/hosts
