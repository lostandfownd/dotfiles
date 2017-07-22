#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Add homebrew to completion path
fpath=("/usr/local/bin" $fpath)

# Make 'cd dir' same as 'dir'
setopt AUTO_CD

# Pipe multiple outputs
setopt MULTIOS

export EDITOR="nvim"

bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vladimiriacob/GCloudSDK/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/vladimiriacob/GCloudSDK/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vladimiriacob/GCloudSDK/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/vladimiriacob/GCloudSDK/google-cloud-sdk/completion.zsh.inc'; fi
