apps = {
    "torrent":              ["qbittorrent", "stremio"],
    "apps":                 ["discord", "zoom", "bitwarden-bin"],
    "browsers":             ["google-chrome", "tor-browser", "firefox-developer-edition"],

    "media/image":          ["krita"],
    "media/video":          ["vlc", "davinci-resolve", "obs-studio"],

    "hardware/boot":        ["os-prober", "grub-customizer", "woeusb"],
    "hardware/cpu":         ["cpu-x-git", "s-tui", "stress"],
    "hardware/gpu":         ["nvidia-settings", "gwe", "cuda-10.2"],
    "hardware/hd":          ["gparted-git", "gsmartcontrol"],

    "console":              ["gotop-bin", "htop", "xclip", "cava", "cbonsai","neofetch", "lolcat"],
    "console/zsh":          ["zsh", "oh-my-zsh-git"],
    "console/zsh/config":   ["antigen-git", "spaceship-prompt-git"],

    "spotify":              ["spotify-snap", "spotify-adblock-linux"],
    "spotify/spicetify":    ["spicetify-cli", "spicetify-themes-git"],


    "fix-bugs":             ["gnome-keyring", "sshfs", "ntfs-3g"]
}


development = {
    "cli":                  ["vsce", "exercism", "wakatime", "openssh"],
    "vm":                   ["docker", "virtualbox-ext-oracle"],
    "api":                  ["insomnia-bin", "postman-bin"],

    "editors":              ["visual-studio-code-insiders-bin", "android-studio"],
    "editors/emacs":        ["emacs", "emacs-doom-themes-git", "fd", "ripgrep"],

    "lang/js":              ["nvm-git", "yarn"],
    "lang/java":            ["java-8-jdk", "glassfish5"],
    "lang/php":             ["apache", "mysql", "php", "php-apache", "phpmyadmin"],
    "lang/python":          ["python", "autopep8"],
    "lang/elixir":          ["elixir", "inotify-tools"],
    "lang/haskell":         ["ghc", "cabal-install-bin", "stack"],
}


fonts = {
    "nerd":             ["nerd-fonts-hack"],
    "ttf":              ["ttf-fira-code", "ttf-ibm-plex", "ttf-liberation", "ttf-roboto"],
    "ttf2":             ["ttf-dejavu", "ttf-droid", "ttf-inconsolata", "ttf-liberation"]
}


audio = {
    "pulseaudio":           ["pulseaudio", "pulseaudio-alsa", "pavucontrol"],
    "alsa":                 ["alsa-firmware", "alsa-lib", "alsa-plugins", "alsa-utils"],
    "icon":                 ["volumeicon"]
}


plasma = {
    "filemanager":          ["dolphin", "dolphin-plugins"],
    "desktop":              ["plank", "superpaper"],
    "unpackfiles":          ["ark"],
    "console":              ["konsole", "yakuake"],
    "kvantum":              ["kvantum-qt5-git", "kvantum-theme-layan-git"],

    "media/image":          ["gwenview"],

    "phone":                ["kdeconnect"],
    "pdf":                  ["okular"]
}


i3 = {
    "wm":                   ["i3blocks", "i3lock", "py3status"],
    "xcompositor":          ["picom"],

    "filemanager":          ["thunar", "thunar-archive-plugin", "thunar-volman"],
    "desktop":              ["nitrogen", "lxappearance"],
    "unpackfiles":          ["xarchiver", "p7zip", "zip", "unzip", "unrar", "unace"],
    "console":              ["kitty", "xcompmgr"],

    "media/image":          ["feh", "imagemagick", "flameshot-git"],
    "media/video":          ["mplayer"],

    "i3":                   ["xdg-user-dirs", "perl-anyevent-i3"],

}


xmonad = {
    "xmonad":               ["xmonad-contrib", "xmonad-utils", "xmonad-log"],
    "haskell":              ["haskell-dbus"],
    "xmobar":               ["xmobar"],

    "filemanager":          ["thunar", "thunar-archive-plugin", "thunar-volman"],
    "media/image":          ["feh"],
}


################################################################
##                          oneline                           ##
################################################################

yarn = [
    "gatsby-cli", "bs-platform", "typescript"
]
