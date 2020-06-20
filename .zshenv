# Oh My Zsh
export ZSH="/home/joaopedro/.oh-my-zsh"

# Android Studio
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno
export DENO_INSTALL="/home/joaopedro/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Flutter
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:`pwd`/flutter/bin/cache/dart-sdk/bin"

# Etc
export PATH="$PATH:$HOME/.rvm/bin" 
export PATH="$PATH:/home/joaopedro/anaconda3/bin"
export PATH="$PATH:/snap/bin"
