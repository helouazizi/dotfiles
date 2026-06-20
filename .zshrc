export ZSH="$HOME/.oh-my-zsh"

# Set the theme (robbyrussell is default, agnoster/bira are great for DevOps)
ZSH_THEME="robbyrussell"


# Standard DevOps Plugins (Enable these after installing Oh My Zsh)
plugins=(git docker docker-compose ansible terraform kubectl helm aws)

source $ZSH/oh-my-zsh.sh



# --- DEVOPS ALIASES ---

# Fast navigation
alias ..="cd .."
alias ...="cd ../.."
alias "h"="cd ~"

# Git shortcuts
alias "gs"="git status"
alias "ga"="git add"
alias "gcm"="git commit -m"
alias "gp"="git push"


# Docker shortcuts
alias "dps"="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias "dimages"="docker images"
alias "dclean"="docker system prune -f --volumes"


# Kubernetes shortcuts (Essential for DevOps)
alias "k"="kubectl"
alias "kgp"="kubectl get pods"
alias "kgs"="kubectl get svc"
alias "kgn"="kubectl get nodes"


# Python/WSL Fixes
alias "python"="python3"
alias "pip"="pip3"