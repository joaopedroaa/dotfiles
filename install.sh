ln -sv ~/dotfiles/.gitconfig ~/ 
ln -sv ~/dotfiles/.profile ~/ 
ln -sv ~/dotfiles/.zshenv ~/ 
ln -sv ~/dotfiles/.zshrc ~/ 
ln -sv ~/dotfiles/hosts /etc 
mkdir ~/.config/redshift & ln -sv ~/dotfiles/redshift.conf ~/.config/redshift

# Normal ------------------------------------------------------------------------------

# Apps
yay -S discord spotify zoom plank krita qbittorrent vlc

# Browsers
yay -S firefox-nightly firefox-developer-edition google-chrome tor-browser

# Fonts
yay -S ttf-fira-code ttf-ibm-plex

# Dev ------------------------------------------------------------------------------

# Apps
yay -S devdocs-desktop insomnia postman 

# Apps / Editors
yay -S visual-studio-code-bin visual-studio-code-insiders android-studio netbeans8

# MISC
yay -S vsce spaceship-prompt-git

# MISC / FixBugs
yay -S gnome-keyring

# MISC / JavaScript
yay -S nvm-git deno-git yarn

# MISC / PHP
yay -S apache mysql php php-apache phpmyadmin

# MISC / Reason
yay -S opam-git

# MISC / Elixi
yay -S elixir erlang-git inotify-tools

# MISC / FP
yay -S stack elm-bin

# NPM Dependencies
yarn global add gatsby-cli bs-platform typescript

# ------------------------------------------------------------------------------
# Verify Updates
yay -Syyu
