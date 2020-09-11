# /
ln -sv ~/dotfiles/hosts /etc

# ~/
ln -sv ~/dotfiles/.gitconfig ~/
ln -sv ~/dotfiles/.profile ~/
ln -sv ~/dotfiles/.zshenv ~/
ln -sv ~/dotfiles/.zshrc ~/

# ~/.config
mkdir ~/.config/redshift & ln -sv ~/dotfiles/.config/redshift.conf ~/.config/redshift
