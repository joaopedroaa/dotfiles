i3-msg 'workspace 1;  append_layout ~/dotfiles/.config/i3/layouts/browser.json'
firefox &


i3-msg 'workspace 2;  append_layout ~/dotfiles/.config/i3/layouts/editor.json'
kitty &
kitty &


i3-msg 'workspace 8;  append_layout ~/dotfiles/.config/i3/layouts/spotify.json'
kitty &


i3-msg 'workspace 9;  append_layout ~/dotfiles/.config/i3/layouts/zathura.json'
kitty &



# -----------------------------------------------------------------------------


sleep 5
for win in $(wmctrl -l | awk -F' ' '{print $1}'); do
    wmctrl -i -r $win -b remove,demands_attention
done


