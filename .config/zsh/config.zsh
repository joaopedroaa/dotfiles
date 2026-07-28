# ============================================================================== #
# ==                  CONFIGURAÇÕES GERAIS E DE HISTÓRICO                       == #
# ============================================================================== #

# Configurações do Histórico
HISTFILE=~/.zsh_history
HISTSIZE=10000000000
SAVEHIST=$HISTSIZE
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY           # Add Timestamp to history
setopt HIST_FIND_NO_DUPS          # Handling duplicate commands
setopt HIST_IGNORE_ALL_DUPS       # Handling duplicate commands


# Cores no terminal
autoload colors && colors


# Outras configurações de ambiente
export GTK_FILE_CHOOSER_BACKEND=local

# ============================================================================== #
# ==                  GERENCIADORES DE VERSÃO (ASDF, NVM)                       == #
# ============================================================================== #
# ASDF
# É melhor carregar o ASDF antes de compinit para que seus completions sejam registrados
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
fi

# NVM (Node Version Manager) com Lazy Loading para melhorar performance
export NVM_DIR="$HOME/.config/nvm"

lazy_nvm() {
  unset -f nvm node npm npx yarn
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  "$@"
}

nvm() { lazy_nvm nvm "$@" }
node() { lazy_nvm node "$@" }
npm() { lazy_nvm npm "$@" }
npx() { lazy_nvm npx "$@" }
yarn() { lazy_nvm yarn "$@" }



# grc
# [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh


# ============================================================================== #
# ==                   ESTILIZAÇÃO DE COMPLETIONS (FZF-TAB)                     == #
# ============================================================================== #

# Desativa o menu tradicional de completamento para priorizar o fzf-tab
zstyle ':completion:*' menu no

# Previews dinâmicos interativos com fzf-tab
# 1. Visualizar conteúdo de pastas com eza ao usar 'cd <Tab>'
if command -v eza >/dev/null 2>&1; then
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons --color=always $realpath'
fi

# 2. Visualizar conteúdo de arquivos com bat ao completar comandos de leitura/edição
if command -v bat >/dev/null 2>&1; then
  zstyle ':fzf-tab:complete:(cat|bat|nano|nvim|code):*' fzf-preview 'bat --color=always --style=numbers $realpath'
fi


# ============================================================================== #
# ==                   OPÇÕES ADICIONAIS DE USABILIDADE                         == #
# ============================================================================== #

setopt HIST_IGNORE_SPACE          # Não salva comandos iniciados com espaço no histórico (útil para senhas)
setopt HIST_REDUCE_BLANKS         # Remove espaços redundantes ao salvar no histórico
setopt HIST_VERIFY                # Pede confirmação (Enter) antes de rodar expansões como !! e !$
setopt AUTO_CD                    # Digitar o caminho de uma pasta existente executa o 'cd' automaticamente

