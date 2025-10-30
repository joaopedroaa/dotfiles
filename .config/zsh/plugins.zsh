

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"



# ============================================================================== #
# ==                   MELHORIAS PRINCIPAIS DO SHELL                            == #
# ============================================================================== #

# Carrega o tema Powerlevel10k. A opção 'depth=1' faz um clone superficial mais rápido e leve.
zinit snippet 'https://github.com/robbyrussell/oh-my-zsh/raw/master/plugins/git/git.plugin.zsh'
zinit ice depth=1; zinit light romkatv/powerlevel10k


# --- Auto Suggestions (Sugestões Automáticas) ---
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20 # Limita o tamanho do buffer de sugestão
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


# --- Syntax Highlighting (Realce de Sintaxe) ---
zinit ice wait"0c" lucid atinit"zpcompinit;zpcdreplay"
zinit light zsh-users/zsh-syntax-highlighting


# --- Auto Suggestions (Sugestões Automáticas) ---
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20 # Limita o tamanho do buffer de sugestão
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


# --- History Substring Search (Busca no Histórico) ---
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down'
zinit light zsh-users/zsh-history-substring-search
# Bindings adicionais para as setas (pode ser necessário dependendo do terminal)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# zsh-autopair
# Fecha automaticamente parênteses, colchetes, etc
zinit light hlissner/zsh-autopair

zinit ice as"program" from"gh-r"
zinit light muesli/duf

zinit ice as"program" from"gh-r"
zinit light dundee/gdu


# ============================================================================== #
# ==                        COMPLETIONS (AUTOCOMPLETAR)                         == #
# ============================================================================== #

# --- zsh-completions ---
# Coleção de definições de autocompletar adicionais para vários comandos.
zinit ice wait"0b" lucid blockf
zinit light zsh-users/zsh-completions

# --- yarn-completion ---
# Autocompletar para o gerenciador de pacotes Yarn.
zinit light buonomo/yarn-completion

# --- fzf (Fuzzy Finder) ---
# Ferramenta de busca por aproximação para a linha de comando.
zinit ice lucid wait'0'
zinit light Aloxaf/fzf-tab

# ============================================================================== #
# ==                      FERRAMENTAS E INTEGRAÇÕES                             == #
# ============================================================================== #


# --- zoxide ---
# Navegação de diretórios inteligente)
zinit ice as"program" from"gh-r"
zinit light ajeetdsouza/zoxide


# --- forgit ---
# Ferramenta interativa que usa o fzf para operações do Git.
zinit load wfxr/forgit


# --- docker-compose ---
# Baixa a versão mais recente do docker-compose dos releases do GitHub.
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zinit load docker/compose


# --- direnv ---
# Carrega e descarrega variáveis de ambiente dependendo do diretório atual.
zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh"
zinit light direnv/direnv



# ============================================================================== #
# ==                     SNIPPETS DO OH MY ZSH                                  == #
# ============================================================================== #

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::bgnotify
zinit snippet OMZP::extract # Extrair qualquer arquivo compactado com um único comando

# ============================================================================== #
# ==                           FINALIZAÇÃO E CONFIGURAÇÃO                       == #
# ============================================================================== #


# ---- Load Theme --
# To customize prompt, run `p10k configure` or edit p10k.zsh.
[[ ! -f ~/dotfiles/.config/zsh/p10k.zsh ]] || source ~/dotfiles/.config/zsh/p10k.zsh

autoload -Uz compinit
compinit
