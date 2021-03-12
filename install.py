from apps import apps, development, fonts, audio, plasma, i3, yarn


def save_file(DATA, filename):
    with open(filename, 'w') as file:
        file.write(DATA)


def save_all_files(DATA):
    for filename in DATA:
        save_file(DATA[filename], f"./sh/install/{filename}.sh")


def create_shell_install(DATA, NEWDATA, filename, shell_directory):
    filedata = ""

    for names in DATA.keys():
        NEWDATA[names] += f"echo \"{'=' * 13} {names.capitalize()} {'=' * 13}\"\n"
        NEWDATA[names] += f"sh {shell_directory}/{names}.sh\n\n"

    for names in NEWDATA.values():
        filedata += names

    save_file(filedata, filename)


def create_oneline(DATA, dic, start_line, name):
    DATA[name] += f"{start_line} "
    for package in dic:
        DATA[name] += f"{package} "


def create_multiline(DATA, dic, start_line, name):
    for categories, apps in dic.items():
        join_apps = ""
        title = ""

        for app in apps:
            join_apps += f"{app} "

        for word in categories.split("/"):
            title += f" {word.capitalize()} /"

        DATA[name] += f"echo \"{'=' * 42}{title[:-1]} {'=' * 21}\"\n"
        DATA[name] += f"{start_line} {join_apps}\n\n"


base = {
    "apps": "",
    "development": "",
    "fonts": "",
    "audio": "",

    "plasma": "",
    "i3": "",

    "yarn": ""
}

code = base.copy()
shell = base.copy()


def main():
    create_oneline(code, yarn,        "yarn global add", "yarn")

    create_multiline(code, apps,        "yay -S", "apps")
    create_multiline(code, development, "yay -S", "development")
    create_multiline(code, fonts,       "yay -S", "fonts")
    create_multiline(code, audio,       "yay -S", "audio")
    create_multiline(code, plasma,      "yay -S", "plasma")
    create_multiline(code, i3,          "yay -S", "i3")

    save_all_files(code)
    # create_shell_install(code, shell, "sh/install.sh",  "./aur")


main()
