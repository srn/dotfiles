export ZSH=/Users/srn/.oh-my-zsh

export UPDATE_ZSH_DAYS=1

export ZSH_THEME="pure"
export PURE_CMD_MAX_EXEC_TIME=1

plugins=(git nvm z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# custom configuration
source ~/.exports
source ~/.functions
source ~/.aliases
