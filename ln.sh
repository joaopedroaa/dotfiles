remove_and_add (){
  rm $2
  ln -sv ~/dotfiles/$1 $2
}

remove_and_add_sudo (){
  sudo rm $2
  sudo ln -sv ~/dotfiles/$1 $2
}

# remove_and_add .config/redshift.conf        ~/.config/redshift.conf

remove_and_add .config/yakuakerc              ~/.config/yakuakerc
remove_and_add .config/neofetch/config.conf   ~/.config/neofetch/config.conf

remove_and_add .doom.d/config.el              ~/.doom.d/config.el
remove_and_add .doom.d/custom.el              ~/.doom.d/custom.el
remove_and_add .doom.d/init.el                ~/.doom.d/init.el
remove_and_add .doom.d/packages.el            ~/.doom.d/packages.el

remove_and_add .gitconfig                     ~/.gitconfig
remove_and_add .profile                       ~/.profile
remove_and_add .zshenv                        ~/.zshenv
remove_and_add .zshrc                         ~/.zshrc


remove_and_add_sudo hosts                     /etc/hosts


