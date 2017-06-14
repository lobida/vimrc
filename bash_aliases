alias ssh='ssh -A'
alias sshagent='ssh-agent -s; ssh-add ~/.ssh/bb_id_rsa'
alias grep='grep --color'
alias vimrc='cd ~/vimrc/'
alias ps='ps -ww'
alias xcopy='xclip -selection clipboard'
alias xpaste='xclip -selection clipboard -o'
alias py2env='workon py2env'
alias py3env='workon py3env'

# Load completion files
# [[ -L "$HOME/.bash_completion.d"  ]] && for file in $(ls -1 "$HOME/.bash_completion.d/"); do source "$HOME/.bash_completion.d/$file"; done
