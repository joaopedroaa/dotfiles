aur = {
    "apps":        ["discord", "spotify", "spotify-adblock-linux", "zoom", "plank", "krita", "qbittorrent", "vlc"],
    "browsers":    ["google-chrome", "tor-browser", "firefox-developer-edition"],
    "font":        ["ttf-fira-code", "ttf-ibm-plex"],

    "dev/apps":    ["devdocs-desktop", "insomnia", "postman"],
    "dev/misc":    ["vsce", "exercism", "spaceship-prompt-git", "wakatime"],
    "dev/editors": ["visual-studio-code-insiders", "android-studio", "netbeans8"],
    "dev/emacs":   ["fd", "ripgrep"],
    "dev/zsh":     ["antigen-git"],

    "lang/js":     ["nvm-git", "yarn"],
    "lang/java":   ["glassfish5", "java-8-jdk"],
    "lang/php":    ["apache", "mysql", "php", "php-apache", "phpmyadmin"],
    "lang/elixi":  ["inotify-tools"],

    "fix-bugs":    ["gnome-keyring"]
}

yarn = [
    "gatsby-cli", "expo-cli", "ignite-cli", "bs-platform", "typescript", "spaceship-prompt"
]

other_apps = [
    "sh -c \"$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)\""
]



def save_file(DATA, finelname):
    with open(finelname, 'w') as file:
        file.write(DATA)

code = {
    "simple": "yay -S ",
    "part": ""
}

yarn = "yarn global add "


for categories, apps in aur.items():
    join_apps = ""

    for app in apps:
        join_apps += f"{app} "

    code["simple"] += join_apps

    code["part"] += f"echo \"{categories}\"\n"
    code["part"] += f"yay -S {join_apps}\n\n"


# save_file(code["part"], "install-part.sh")
save_file(code["simple"], "install-aur.sh")
