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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jacobsansbury/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jacobsansbury/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jacobsansbury/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jacobsansbury/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export EDITOR=code

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


export PATH="$HOME/.cargo/bin:$PATH"
