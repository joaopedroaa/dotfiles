# Antigen
curl -L git.io/antigen > ~/antigen.zsh

# zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Spotify keys
gpg --keyserver pool.sks-keyservers.net --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
gpg --keyserver pool.sks-keyservers.net --recv-keys 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
