ssh-add -K > /dev/null
dotfiles=~/.me/conf/bash

for DOTFILE in `find $dotfiles`
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Tell Antigen that you're done.
antigen apply

# Setup zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="$HOME/.cargo/bin:$PATH"
