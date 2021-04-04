apps = {
    "torrent":              ["qbittorrent", "stremio"],
    "apps":                 ["discord", "zoom", "bitwarden-bin", "redshift"],
    "browsers":             ["chromium", "tor-browser", "firefox-developer-edition"],
    "phone":                ["kdeconnect"],

    "media/image":          ["krita"],
    "media/video":          ["vlc", "obs-studio"],

    "hardware/boot":        ["os-prober", "grub-customizer", "woeusb"],
    "hardware/cpu":         ["cpu-x-git", "s-tui", "stress"],
    "hardware/gpu":         ["gwe"],
    "hardware/hd":          ["gparted-git", "gsmartcontrol", "agedu"],

    "driver/gpu":           ["nvidia", "nvidia-utils", "nvidia-settings","mesa-demos"],

    "console":              ["gotop-bin", "htop", "xclip", "inxi"],
    "console/fun":          ["cava", "cbonsai", "neofetch", "lolcat"],
    "console/zsh":          ["zsh", "oh-my-zsh-git"],
    "console/zsh/config":   ["antigen-git", "spaceship-prompt-git"],

    "spotify":              ["spotify-snap", "spotify-adblock-linux"],
    "spotify/spicetify":    ["spicetify-cli", "spicetify-themes-git"],

    "fonts/nerd":           ["nerd-fonts-complete"],
    "fonts/ttf":            ["ttf-fira-code", "ttf-ibm-plex-mono-git", "ttf-liberation", "ttf-roboto", "ttf-dejavu", "ttf-droid", "ttf-inconsolata", "ttf-liberation", "ttf-unifont"],
    "fonts/misc":           ["awesome-terminal-fonts"],

    "fix-bugs":             ["gnome-keyring", "sshfs", "ntfs-3g"]
}


development = {
    "cli":                  ["vsce", "exercism", "wakatime", "openssh"],
    "vm":                   ["docker", "virtualbox-ext-oracle"],
    "api":                  ["insomnia-bin", "postman-bin"],

    "editors":              ["visual-studio-code-insiders-bin", "intellij-idea-community-edition"],
    "editors/emacs":        ["emacs", "emacs-doom-themes-git", "fd", "ripgrep"],

    "lang/js":              ["nvm-git", "yarn"],
    "lang/java":            ["jdk", "glassfish5", "processing"],
    "lang/json":            ["jq"],
    "lang/php":             ["apache", "mysql", "php", "php-apache", "phpmyadmin"],
    "lang/shell":           ["shellcheck"],
    "lang/python":          ["python", "autopep8"],
    "lang/elixir":          ["elixir", "inotify-tools"],
    "lang/haskell":         ["ghc", "cabal-install-bin", "stack"],
    "lang/db":              ["postgresql"],
}


# -------------------------------------------------------------------------------------- #


plasma = {
    "filemanager":          ["dolphin", "dolphin-plugins"],
    "desktop":              ["plank", "superpaper"],
    "unpackfiles":          ["ark"],
    "console":              ["konsole", "yakuake"],
    "kvantum":              ["kvantum-qt5-git", "kvantum-theme-layan-git"],

    "media/image":          ["gwenview"],
    "media/docs":           ["okular"]
}

xfce = {
    "xfce":                 ["xfce4-settings"],
    "compositor":           ["picom"],
    "menu":                 ["dmenu", "rofi", "rofi-calc"],

    "filemanager":          ["thunar", "thunar-archive-plugin", "thunar-volman", "tumbler", "gvfs", "lf"],
    "desktop":              ["nitrogen", "lxappearance", "dunst-git"],
    "unpackfiles":          ["xarchiver", "p7zip", "zip", "unzip", "unrar", "unace"],
    "console":              ["kitty", "alacritty-git", "xcompmgr"],

    "dm/xorg":              ["xorg", "xorg-xinit-git"],
    "dm/lightdm":           ["lightdm", "lightdm-gtk-greeter", "lightdm-gtk-greeter-settings", "lightdm-webkit2-greeter"],

    "themes":               ["ant-dracula-gtk-theme"],
    "themes/icons":         ["tela-icon-theme-git", "flatery-icon-theme-git"],
    "themes/cursors":       ["capitaine-cursors"],

    "media/image":          ["feh", "imagemagick", "flameshot-git", "gcolor2"],
    "media/video":          ["mplayer"],
    "media/docs":           ["evince", "zathura", "zathura-pdf-poppler"],

    "audio/pulseaudio":     ["pulseaudio", "pulseaudio-alsa", "pavucontrol"],
    "audio/alsa":           ["alsa-firmware", "alsa-lib", "alsa-plugins", "alsa-utils"],
    "audio/icon":           ["volumeicon"],
    "audio/cli":            ["playerctl"],
}


################################################################


i3 = {
    "i3":                   ["i3-gaps", "autotiling-git"],
    "lock":                 ["i3lock"],
    "bar":                  ["i3blocks",  "py3status", "polybar"],
}


xmonad = {
    "xmonad":               ["xmonad", "xmonad-contrib", "xmonad-utils", "xmonad-log"],
    "haskell":              ["haskell-dbus"],
    "bar":                  ["xmobar"],
}
