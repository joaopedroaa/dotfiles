i3-msg 'workspace 1;  append_layout ~/dotfiles/.config/i3/layouts/1.json'
firefox-nightly &


i3-msg 'workspace 2;  append_layout ~/dotfiles/.config/i3/layouts/2.json'
# zathura
kitty &


i3-msg 'workspace 3;  append_layout ~/dotfiles/.config/i3/layouts/3.json'
# spotify
kitty &


i3-msg 'workspace 4;  append_layout ~/dotfiles/.config/i3/layouts/4.json'
# code-insiders
kitty &
kitty &


i3-msg 'workspace 5;  append_layout ~/dotfiles/.config/i3/layouts/5.json'
emacs &
kitty &
kitty &


i3-msg 'workspace 10; append_layout ~/dotfiles/.config/i3/layouts/10.json'
# firefox-nightly workona


# -----------------------------------------------------------------------------

sleep 5
for win in $(wmctrl -l | awk -F' ' '{print $1}'); do
    wmctrl -i -r $win -b remove,demands_attention
done

LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify

