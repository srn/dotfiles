source /opt/boxen/env.sh
source ~/.profile

export NVM_DIR="/Users/srn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# custom alias
alias gs='git status -s'
alias gr='git reset --soft HEAD~1'
alias ll='ls -lah'

# git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] λ "
