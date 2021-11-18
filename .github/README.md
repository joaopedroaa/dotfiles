### Installation

Download repo
```sh
git clone git@github.com:joaopedroaats/dotfiles.git ~/dotfiles
```

Sync `~/dotfiles` with local files, this command will delete a lot of files.

```sh
# You are about to do something potentially harmful, do not just run this. examine and judge. run at at your own risk
sh ~/dotfiles/sync.sh
```

### Useful commands
source at `bin`

- `update` —  will update your system `yay, zinit, doom, cabal...`
- `status` —  print useful infos. type `status -h` for help
- `stot` —  like gnu stow, but easier. type `stot -h` for help
- `color` —  terminal colors test
- `pass` —  generate a new password with 42 characters. e.g. ` pjDZHrjXB9LCnHHd1D5BvmbpKExkcOBYqA9oZ3nXxi`
- `PATH` —  print $PATH in readable view

### Folders Scheme

- `.config` ->  `~/.config`
- `bin`     ->  `~/.local/bin`
- `home`    ->  `~/`
- `boot`    ->  `/boot`
- `etc`     ->  `/etc`
- `srv`     ->  `/srv`
- `usr`     ->  `/usr`


### Config apps
source at `.config`

- `i3` — Window manager
- `dunst` —  Notification daemon
- `firefox` —  Browser
- `flameshot` — Screenshot
- `kitty` —  Terminal emulator
- `doom emacs` — Text editor
- `nvim` — Text editor
- `picom` — Compositor
- `polybar` — Status bar
- `ranger` — File manager
- `rofi` — Application launcher
- `zathura` — Document viewer
- `zsh` — Shell



### Zsh Plugins
source at `.config/zsh/plugins.zsh`

- [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-users/zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [buonomo/yarn-completion](https://github.com/buonomo/yarn-completion)
- [direnv/direnv](https://github.com/direnv/direnv)
- [docker/compose](https://github.com/docker/compose)
- [wfxr/forgit](https://github.com/wfxr/forgit)
- [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)
- [fzf](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf)
- [bgnotify](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/bgnotify)


### Boot Manager

Download refind theme
```sh
git clone git@gitlab.com:joaopedroaa/pers-rEFInd.git refind-theme
```

Copy to /boot
```sh
sudo cp -r refind-theme /boot/efi/EFI/refind/
```


### Wallpapers

[joaopedroaa/wallpapers](https://gitlab.com/joaopedroaa/wallpapers)

```sh
git clone git@gitlab.com:joaopedroaa/wallpapers.git ~/Pictures/Wallpapers/
```

### Packages

[joaopedroaa/packages](https://github.com/joaopedroaa/packages)

```sh
git clone git@github.com:joaopedroaa/packages.git ~/packages

```
