alias l="ls --color -h --group-directories-first"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias commit="EDITOR=vim git commit"
alias please='sudo $(history -p !!)'

alias gohome="cd ~/.me"
alias gossh="cd ~/.ssh"
alias k="kubectl"

alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

alias resource="source ~/.profile"
alias gossh="cd ~/.ssh"
alias pyenv3="pipenv install --python=3.7"

alias kstage="doctl kubernetes cluster kubeconfig save 41dfdb30-b64f-46f9-b769-946b7a42a965"
alias kprod="doctl kubernetes cluster kubeconfig save c5978efc-15b4-4e88-aff1-9125555b6427"
