echo "========================================== ZSH / ohmyzsh  ====================="
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo "========================================== ZSH / zinit  ====================="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"


echo "========================================== ZSH / Antigen  ====================="
curl -L git.io/antigen > ~/antigen.zsh


echo "========================================== Spotify / Spicetify  =====================" # https://github.com/khanhas/spicetify-cli/wiki/Basic-Usage
sudo chmod a+wr /opt/spotify && sudo chmod a+wr /opt/spotify/Apps -R
spicetify config current_theme Bittersweet
spicetify apply


echo "========================================== asdf  ====================="
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0


echo "========================================== System limit for number of file watchers reached  ====================="
# ENOSPC: System limit for number of file watchers reached
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


# echo "========================================== Fix netbeans 8 font  ====================="
# echo "netbeans_default_options=\"-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true -J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=on\"" >> /usr/share/netbeans/etc/netbeans.conf


echo "========================================== Install Phoenix  ====================="
mix archive.install hex phx_new
