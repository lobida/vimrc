alias ssh='ssh -A'
alias sshagent='ssh-agent -s; ssh-add ~/.ssh/bb_id_rsa'
alias grep='grep --color'
alias vimrc='cd ~/vimrc/'
alias vim='/usr/bin/nvim'
alias ps='ps -ww'
alias xcopy='xclip -selection clipboard'
alias xpaste='xclip -selection clipboard -o'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias mmfaws='mfa otp aws | xclip -selection clipboard'
alias py2env='workon py2env'
alias py3env='workon py3env'
alias pvenv='source venv/bin/activate'
alias rvmreset='rvm reset && rvm use default'
alias rvmdefault='rvm use default'
alias gvmdefault='gvm use go1.8'
alias gopath="cd $GOPATH"
alias aria2d="aria2c -D --conf=$HOME/.aria2/aria2.conf"
# Load completion files
# [[ -L "$HOME/.bash_completion.d"  ]] && for file in $(ls -1 "$HOME/.bash_completion.d/"); do source "$HOME/.bash_completion.d/$file"; done
