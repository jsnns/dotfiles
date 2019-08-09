# Liquid Prompt
source ~/.me/plugin/liquidprompt
LP_USER_ALWAYS=false
LP_USER=""
LP_BATTERY_THRESHOLD=100
LP_LOAD_THRESHOLD=25
LP_TEMP_THRESHOLD=0
LP_PATH_LENGTH=20

# enable auto suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR=vim
export PATH="$HOME/.cargo/bin:$PATH"

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
