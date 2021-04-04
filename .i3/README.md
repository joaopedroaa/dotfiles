
# i3 Layout


### Saving the layout
```sh
i3-save-tree --workspace N > ~/dotfiles/.i3/layouts/N.json
```

### Restoring the layout
```sh
i3-msg "workspace N; append_layout ~/dotfiles/.i3/layouts/N.json"
```