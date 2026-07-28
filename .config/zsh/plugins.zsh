

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
# Sugestões automáticas de comandos baseadas no seu histórico
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20 # Limita o tamanho do buffer de sugestão
zinit ice wait"0a" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


# --- Syntax Highlighting (Realce de Sintaxe) ---
# Realce de sintaxe em tempo real no terminal (detecta comandos válidos/inválidos)
zinit ice wait"0c" lucid atinit"zicompinit; zicdreplay"
zinit light zdharma-continuum/fast-syntax-highlighting


# --- History Substring Search (Busca no Histórico) ---
# Busca no histórico digitando parte de um comando e usando as setas para cima/baixo
zinit ice wait"0b" lucid atload'bindkey "$terminfo[kcuu1]" history-substring-search-up; bindkey "$terminfo[kcud1]" history-substring-search-down'
zinit light zsh-users/zsh-history-substring-search

# Bindings adicionais para as setas (pode ser necessário dependendo do terminal)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# zsh-autopair
# Fecha aspas, parênteses, colchetes e chaves automaticamente ao digitar
zinit light hlissner/zsh-autopair

# zsh-you-should-use
# Lembra você de usar os aliases configurados caso digite o comando completo
zinit ice wait"0b" lucid
zinit light MichaelAquilina/zsh-you-should-use


# ============================================================================== #
# ==                        COMPLETIONS (AUTOCOMPLETAR)                         == #
# ============================================================================== #

# --- zsh-completions ---
# Coleção de definições de autocompletar adicionais para centenas de comandos comuns
zinit ice wait"0b" lucid blockf
zinit light zsh-users/zsh-completions

# --- yarn-completion ---
# Autocompletar aprimorado para pacotes, scripts e comandos do Yarn
zinit ice as"completion" mv"yarn-extra-completion.plugin.zsh -> _yarn_extra"
zinit light buonomo/yarn-completion

# --- conda-zsh-completion ---
# Autocompletar para comandos e nomes de ambientes virtuais do Conda
zinit ice as"completion"
zinit light esc/conda-zsh-completion

# --- fzf (Fuzzy Finder) ---
# Substitui o menu padrão de completions do Tab por uma lista interativa via fzf
zinit ice lucid wait'0'
zinit light Aloxaf/fzf-tab

# ============================================================================== #
# ==                      FERRAMENTAS E INTEGRAÇÕES                             == #
# ============================================================================== #


# --- zoxide ---
# Navegação inteligente de diretórios (substituto moderno e rápido do 'cd' com 'z')
zinit ice as"program" from"gh-r" lucid wait"0b"
zinit light ajeetdsouza/zoxide


# --- forgit ---
# Atalhos interativos usando fzf para logs, status, diff e commits do Git
zinit load wfxr/forgit


# --- docker-compose ---
# Baixa e disponibiliza a versão mais recente do binário do docker-compose
zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*" lucid wait"0b"
zinit load docker/compose


# --- direnv ---
# Carrega e desmarca variáveis de ambiente automaticamente ao entrar/sair de pastas
zinit ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' src"zhook.zsh" lucid wait"0b"
zinit light direnv/direnv



# ============================================================================== #
# ==                     SNIPPETS DO OH MY ZSH                                  == #
# ============================================================================== #

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::bgnotify
zinit snippet OMZP::extract # Extrair qualquer arquivo compactado com um único comando
zinit snippet OMZP::colored-man-pages # Coloriza as páginas de manual (man) para melhor leitura

# ============================================================================== #
# ==                           FINALIZAÇÃO E CONFIGURAÇÃO                       == #
# ============================================================================== #


# ---- Load Theme --
# To customize prompt, run `p10k configure` or edit p10k.zsh.
[[ ! -f ~/dotfiles/.config/zsh/p10k.zsh ]] || source ~/dotfiles/.config/zsh/p10k.zsh

autoload -Uz compinit
compinit
