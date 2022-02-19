ssh-add --apple-use-keychain > /dev/null
dotfiles=~/.me/conf/bash

for DOTFILE in `find $dotfiles`
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Load the theme
antigen theme nicoulaj

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle macos
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use
# Syntax highlighting bundle.
# Tell Antigen that you're done.
antigen apply

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# Setup zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
