alias ssh='ssh -A'
alias sshagent='ssh-agent -s; ssh-add ~/.ssh/bb_id_rsa'
alias grep='grep --color'
alias vimrc='cd ~/vimrc/'
alias ps='ps -ww'
alias xcopy='xclip -selection clipboard'
alias xpaste='xclip -selection clipboard -o'
alias rvmreset='rvm reset && rvm use default'

# Load completion files
# [[ -L "$HOME/.bash_completion.d"  ]] && for file in $(ls -1 "$HOME/.bash_completion.d/"); do source "$HOME/.bash_completion.d/$file"; done
