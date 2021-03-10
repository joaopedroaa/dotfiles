[Generating a new SSH](https://docs.github.com/en/github-ae@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Install openssh
```sh
yay -S openssh xclip
```

Create a new ssh key
```sh
ssh-keygen -t ed25519 -C "email@pm.me"
```

Start the ssh-agent in the background.
```sh
eval "$(ssh-agent -s)"
```

Add your SSH private key to the ssh-agent.
```sh
ssh-add ~/.ssh/id_ed25519
```

Copies the contents of the id_ed25519.pub file to your clipboard
```sh
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```

Clone the git
```sh
git clone git@github.com:joaopedroaats/dotfiles.git ~/dotfiles
```

