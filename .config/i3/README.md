# Layouts

## 1
- firefox

## 2
- Visual Studio Code
- kitty
- kitty


## 8
- spotify
- kitty

## 9
- zathura
- kitty


## 10
- firefox workona


---


### Saving the layout
```sh
i3-save-tree --workspace N > ~/dotfiles/.config/i3/layouts/N.json
```

### Restoring the layout
```sh
i3-msg "workspace N; append_layout ~/dotfiles/.config/i3/layouts/N.json"
```
