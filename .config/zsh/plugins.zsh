source ~/.zinit/bin/zinit.zsh


# --- oh my zsh ------
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh'
zinit ice depth=1; zinit light romkatv/powerlevel10k


# --- autosuggestions ------
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


# --- history ------
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down'
zinit light zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# --- zsh Completions ------
zinit ice wait"0b" lucid blockf
zinit light zsh-users/zsh-completions


# --- fzf ------
zinit ice from"gh-r" as"command"
zinit light junegunn/fzf


# --- syntax highlighting ------
zinit ice wait"0c" lucid atinit"zpcompinit;zpcdreplay"
zinit light zsh-users/zsh-syntax-highlighting


# --- Completion ------
zinit light buonomo/yarn-completion


# --- docker compose ------
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zinit load docker/compose


# --- direnv ------
zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zinit light direnv/direnv


# --- forgit ------
zinit load wfxr/forgit


zinit snippet OMZP::sudo
zinit snippet OMZP::fzf
zinit snippet OMZP::bgnotify


# ---- Load Theme --------------------------------------------------------------------------
# To customize prompt, run `p10k configure` or edit p10k.zsh.
[[ ! -f ~/dotfiles/.config/zsh/p10k.zsh ]] || source ~/dotfiles/.config/zsh/p10k.zsh
