source ~/dotfiles/.scripts/separate_echo.sh

update (){
  separate_echo "yay -Syyuu"
  yay -Syyuu

  separate_echo "doom upgrade"
  doom -y upgrade

  if [ "$1" = "c" ]; then
      separate_echo "makepkg vscode insiders"
      cd ~/.cache/yay/visual-studio-code-insiders-bin
      makepkg -si --noconfirm

      separate_echo "cabal update"
      cabal update

      separate_echo "tldr -u"
      tldr -u
  fi
}
