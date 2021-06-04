source ~/dotfiles/.scripts/separate_echo.sh

update (){
  separate_echo "yay -Syyuu"
  yay -Syyuu

  separate_echo "makepkg vscode insiders"
  cd ~/.cache/yay/visual-studio-code-insiders-bin
  makepkg -si --noconfirm

  separate_echo "doom sync"
  doom sync

  separate_echo "doom upgrade"
  doom upgrade

  separate_echo "cabal update"
  cabal update

  separate_echo "tldr -u"
  tldr -u
}
