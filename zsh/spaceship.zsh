ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  time      # Time stamps section
  dir       # Current directory section
  host      # Hostname section
  git       # Git section (git_branch + git_status)
  docker    # Docker section
  hg        # Mercurial section (hg_branch  + hg_status)
  exec_time # Execution time
  line_sep  # Line break
  battery   # Battery level and status
  vi_mode   # Vi-mode indicator
  jobs      # Background jobs indicator
  exit_code # Exit code section
  char      # Prompt character
)

# ------------------------------------------------------------------------------
# Configuration

# Prompt
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true

# Char Config
SPACESHIP_CHAR_SYMBOL="λ"
SPACESHIP_CHAR_SUFFIX=" "

# Dir Config
SPACESHIP_DIR_PREFIX=' '
SPACESHIP_DIR_COLOR=pink

# Time Config
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT=%T

# Git Config
SPACESHIP_GIT_PREFIX=''

# Set Spaceship ZSH as a prompt
autoload -U promptinit
promptinit
# prompt spaceship
