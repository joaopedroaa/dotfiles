i3-msg 'workspace 1;  append_layout ~/dotfiles/.config/i3layouts/browser.json'
firefox &

i3-msg 'workspace 2;  append_layout ~/dotfiles/.config/i3layouts/editor.json'
kitty &
kitty &

i3-msg 'workspace 11;  append_layout ~/dotfiles/.config/i3layouts/spotify.json'
LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify &
kitty &

i3-msg 'workspace 12;  append_layout ~/dotfiles/.config/i3layouts/discord.json'
discord & # discord  --start-minimized &


# -----------------------------------------------------------------------------


sleep 5
for win in $(wmctrl -l | awk -F' ' '{print $1}'); do
    wmctrl -i -r $win -b remove,demands_attention
done


