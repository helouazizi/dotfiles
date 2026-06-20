export ZSH="$HOME/.oh-my-zsh"

# Set the theme (robbyrussell is default, agnoster/bira are great for DevOps)
ZSH_THEME="robbyrussell"


# Standard DevOps Plugins (Enable these after installing Oh My Zsh)
plugins=(git docker docker-compose ansible terraform kubectl helm aws)

source $ZSH/oh-my-zsh.sh
