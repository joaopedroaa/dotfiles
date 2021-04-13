apps = {
    "arch":                 ["paru"],
    "apps":                 ["bitwarden-bin", "redshift", "mailspring"],
    "bluetooth":            ["bluez", "bluez-libs", "bluez-utils", "blueberry"],
    "android":              ["android-sdk", "android-tools", "kdeconnect"],
    "key":                  ["gnome-keyring"],

    "apps/torrent":         ["qbittorrent", "stremio"],
    "apps/browsers":        ["chromium", "tor-browser", "firefox-developer-edition"],
    "apps/communication":   ["discord_arch_electron", "zoom"],

    "media/image":          ["krita"],
    "media/video":          ["vlc", "obs-studio"],

    "hardware/boot":        ["os-prober", "grub-customizer", "woeusb"],
    "hardware/cpu":         ["cpu-x-git", "s-tui", "stress"],
    "hardware/gpu":         ["gwe"],
    "hardware/hd":          ["gparted-git", "gsmartcontrol", "agedu"],

    "driver/gpu":           ["nvidia", "nvidia-utils", "nvidia-settings", "mesa-demos"],

    "console":              ["xclip", "xsel", "youtube-dl"],
    "console/fun":          ["cava", "cbonsai", "lolcat"],
    "console/zsh":          ["zsh", "oh-my-zsh-git"],
    "console/zsh/config":   ["antigen-git", "spaceship-prompt-git"],

    "console/ui":           ["lazygit-bin", "lazydocker-bin"],
    "console/ui/activity":  ["gotop-bin", "htop"],
    "console/ui/sysinfo":   ["neofetch", "inxi"],

    "spotify":              ["spotify-snap", "spotify-adblock-linux"],
    "spotify/spicetify":    ["spicetify-cli", "spicetify-themes-git"],

    "fonts/nerd":           ["nerd-fonts-complete"],
    "fonts/ttf":            ["ttf-fira-code", "ttf-ibm-plex-mono-git", "ttf-liberation", "ttf-roboto", "ttf-dejavu", "ttf-droid", "ttf-inconsolata", "ttf-liberation", "ttf-unifont", "ttf-ms-fonts", "ttf-font-icons"],
    "fonts/misc":           ["awesome-terminal-fonts"]
}


development = {
    "cli":                  ["vsce", "exercism", "wakatime", "openssh"],
    "vm":                   ["docker", "virtualbox-ext-oracle"],
    "api":                  ["insomnia-bin", "postman-bin"],

    "editors":              ["visual-studio-code-insiders-bin", "intellij-idea-community-edition", "neovim"],
    "editors/emacs":        ["emacs", "emacs-doom-themes-git", "fd", "ripgrep"],

    "lang/js":              ["nvm-git", "yarn"],
    "lang/php":             ["apache", "mysql", "php", "php-apache", "phpmyadmin"],
    "lang/java":            ["jdk", "glassfish5", "processing"],
    "lang/json":            ["jq"],
    "lang/shell":           ["shellcheck"],
    "lang/ocaml":           ["opam"],
    "lang/python":          ["python", "autopep8"],
    "lang/elixir":          ["elixir", "inotify-tools"],
    "lang/haskell":         ["ghc", "cabal-install-bin", "stack"],
    "lang/mark":            ["pandoc-bin"]
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

    "desktop":              ["nitrogen", "lxappearance", "dunst-git"],
    "unpackfiles":          ["xarchiver", "rar", "unrar", "zip", "unzip", "p7zip"],
    "console":              ["kitty", "alacritty-git", "xcompmgr"],

    "filesystem":           ["sshfs", "ntfs-3g"],
    "filesystem/mtp":       ["mtpfs", "jmtpfs"],
    "filesystem/gvfs":      ["gvfs", "gvfs-mtp", "gvfs-gphoto2"],

    "filemanager":          ["thunar", "thunar-archive-plugin", "thunar-volman"],
    "filemanager/tumbler":  ["tumbler", "ffmpegthumbnailer"],
    "filemanager/console":  ["lf", "ranger"],

    "dm/xorg":              ["xorg", "xorg-xinit-git"],
    "dm/lightdm":           ["lightdm", "lightdm-gtk-greeter", "lightdm-gtk-greeter-settings", "lightdm-webkit2-greeter"],

    "themes":               ["ant-dracula-gtk-theme"],
    "themes/icons":         ["tela-icon-theme-git", "flatery-icon-theme-git"],
    "themes/cursors":       ["capitaine-cursors"],

    "media/image":          ["feh", "imagemagick", "flameshot-git", "gcolor2"],
    "media/video":          ["mplayer"],
    "media/docs":           ["evince", "zathura", "zathura-pdf-poppler"],

    "audio/pulseaudio":     ["pulseaudio", "pulseaudio-alsa", "pulseeffects-legacy", "pavucontrol"],
    "audio/alsa":           ["alsa-firmware", "alsa-lib", "alsa-plugins", "alsa-utils"],
    "audio/icon":           ["volumeicon"],
    "audio/cli":            ["playerctl"],
    "audio/synthesis":      ["festival", "festival-us"],
}


################################################################


i3 = {
    "i3":                   ["i3-gaps", "autotiling-git", "perl-anyevent-i3"],
    "lock":                 ["i3lock"],
    "bar":                  ["i3blocks", "py3status", "polybar"],
}


xmonad = {
    "xmonad":               ["xmonad", "xmonad-contrib", "xmonad-utils", "xmonad-log"],
    "haskell":              ["haskell-dbus"],
    "bar":                  ["xmobar"],
}
