export ZSH=/Users/srn/.oh-my-zsh

ZSH_THEME="pure"

export UPDATE_ZSH_DAYS=1

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# custom
source ~/.aliases

# z.sh (https://github.com/rupa/z)
source ~/z.sh

# https://github.com/aspnet/dnvm
[ -s "/Users/srn/.dnx/dnvm/dnvm.sh" ] && . "/Users/srn/.dnx/dnvm/dnvm.sh" # Load dnvm
