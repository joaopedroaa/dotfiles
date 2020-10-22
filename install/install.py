from apps import aur, yarn


def save_file(DATA, finelname):
    with open(finelname, 'w') as file:
        file.write(DATA)


code = {
    "aur_oneline": "yay -S ",
    "aur_caregory": "",
    "yarn": "yarn global add "
}


def create_aur_code():
    for categories, apps in aur.items():
        join_apps = ""
        title = ""

        for app in apps:
            join_apps += f"{app} "

        for word in categories.split("/"):
            title += f" {word.capitalize()} /"

        code["aur_oneline"] += join_apps

        code["aur_caregory"] += f"echo \"{'=' * 42}{title[:-1]} {'=' * 21}\"\n"
        code["aur_caregory"] += f"yay -S {join_apps}\n\n"


def create_yarn_code():
    for package in yarn:
        code["yarn"] += f"{package} "


def main():
    create_yarn_code()
    create_aur_code()

    code["aur_oneline"] += f"\n{code['yarn']}"
    code["aur_caregory"] += f"\n{code['yarn']}"

    save_file(code["aur_oneline"], "install-oneline.sh")
    save_file(code["aur_caregory"], "install-categories.sh")


main()
