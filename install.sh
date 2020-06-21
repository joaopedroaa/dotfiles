ln -sv ~/dotfiles/.aliases ~/ 
ln -sv ~/dotfiles/.gitconfig ~/ 
ln -sv ~/dotfiles/.profile ~/ 
ln -sv ~/dotfiles/.zshenv ~/ 
ln -sv ~/dotfiles/.zshrc ~/ 
ln -sv ~/dotfiles/hosts /etc 
mkdir ~/.config/redshift & ln -sv ~/dotfiles/redshift.conf ~/.config/redshift

# Apps
yay -S discord spotify zoom plank krita qbittorrent vlc

# Browsers
yay -S firefox-nightly firefox-developer-edition google-chrome tor-browser

# Editors
yay -S visual-studio-code-bin visual-studio-code-insiders android-studio netbeans intellij-idea-ultimate-edition 

# Dev Programs
yay -S devdocs-desktop insomnia postman 

# Dev misc
yay -S opam-git nvm-git deno-git yarn vsce 

# LAMP Config
yay -S apache mysql php php-apache phpmyadmin

# Npm: Dependencies
yarn global add gatsby-cli bs-platform

# Verify Updates
yay -Syyu
