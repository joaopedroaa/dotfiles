# Config Stot
mkdir ~/.local/bin/
[ ! -f ~/.local/bin/stot ] && ln -sv ~/dotfiles/bin/stot ~/.local/bin

# Download Packages
git clone git@github.com:joaopedroaats/packages.git ~/packages
