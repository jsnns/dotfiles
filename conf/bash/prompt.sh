# Liquid Prompt
source ~/.me/plugin/liquidprompt
LP_USER_ALWAYS=false
LP_USER=""
LP_BATTERY_THRESHOLD=100
LP_LOAD_THRESHOLD=25
LP_TEMP_THRESHOLD=0
LP_PATH_LENGTH=20
LP_PS1_POSTFIX="--> "

# enable auto suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR="code -w"
export PATH="$HOME/.cargo/bin:$PATH"

zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
