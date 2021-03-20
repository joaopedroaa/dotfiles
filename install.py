from apps import *


def save_files(DATA):
    for category in DATA:
        with open(f"./sh/install/{category}.sh", 'w') as file:
            file.write(DATA[category])


def create_multiline(DATA, name, start_line, dic):
    for categories, apps in dic.items():
        join_apps, title, count = "", "", 0

        for app in apps:
            join_apps += f"{app} "
            count += 1

        for word in categories.split("/"):
            title += f" {word.capitalize()} /"

        DATA[name] += f"echo \"{'=' * 42}{title[:-1]}({count}) {'=' * 21}\"\n"
        DATA[name] += f"{start_line} {join_apps}--noconfirm\n\n"


base = {
    "apps": "",
    "apps_dev": "",
    "de_plasma": "",
    "de_xfce": "",
    "wm_i3": "",
    "wm_xmonad": "",
}


def main():
    create_multiline(base, "apps",      "yay -S", apps)
    create_multiline(base, "apps_dev",  "yay -S", development)
    create_multiline(base, "de_plasma", "yay -S", plasma)
    create_multiline(base, "de_xfce",   "yay -S", xfce)
    create_multiline(base, "wm_i3",     "yay -S", i3)
    create_multiline(base, "wm_xmonad", "yay -S", xmonad)
    save_files(base)


main()
