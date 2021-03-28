source ~/.zinit/bin/zinit.zsh
source ~/antigen.zsh

# --- zinit ---------------------------------------------------------------------------
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh'
zinit light denysdovhan/spaceship-prompt

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma/history-search-multi-word
zinit light zdharma/fast-syntax-highlighting
zinit light buonomo/yarn-completion
zinit light sobolevn/wakatime-zsh-plugin

zinit ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zinit light tj/git-extras

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zinit load docker/compose

zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zinit light direnv/direnv

zinit ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zinit light trapd00r/LS_COLORS


# --- antigen ---------------------------------------------------------------------------
antigen use oh-my-zsh
antigen apply


# ------------------------------------------------------------------------------
autoload -U promptinit;
promptinit
prompt spaceship
