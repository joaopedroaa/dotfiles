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
yay -S vsce exercism spaceship-prompt-git  jdk8-openjdk

# MISC / FixBugs
yay -S gnome-keyring

# MISC / JavaScript
yay -S nvm-git deno-bin yarn

# MISC / Java
yay -S glassfish5 java-8-jdk

# MISC / PHP
yay -S apache mysql php php-apache phpmyadmin

# MISC / Reason
yay -S opam-git

# MISC / Elixi
# elixir erlang-git
yay -S inotify-tools

# MISC / FP
yay -S stack elm-bin

# NPM Dependencies
yarn global add gatsby-cli expo-cli ignite-cli bs-platform typescript

# ------------------------------------------------------------------------------
# Verify Updates
yay -Syyu
