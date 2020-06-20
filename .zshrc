# zsh Theme - SPACESHIP
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="λ"

### End of Zinit's installer chunk
fpath=($fpath "/home/joaopedro/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# opam configuration
test -r /home/joaopedro/.opam/opam-init/init.zsh && . /home/joaopedro/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zdharma/fast-syntax-highlighting
zplugin light buonomo/yarn-completion



# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

