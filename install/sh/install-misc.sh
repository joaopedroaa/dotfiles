# Antigen
curl -L git.io/antigen > ~/antigen.zsh

# zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Spotify keys
gpg --keyserver pool.sks-keyservers.net --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
gpg --keyserver pool.sks-keyservers.net --recv-keys 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
gpg --keyserver pool.sks-keyservers.net --recv-keys 8FD3D9A8D3800305A9FFF259D1742AD60D811D58


# Spicetify
# https://github.com/khanhas/spicetify-cli/wiki/Basic-Usage
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

spicetify config current_theme Bittersweet
spicetify apply


# Docker
systemctl start docker


# Fix netbeans 8 font
# echo "netbeans_default_options=\"-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true -J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=on\"" >> /usr/share/netbeans/etc/netbeans.conf
