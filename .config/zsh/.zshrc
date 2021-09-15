COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
export ZSH_DISABLE_COMPFIX=true

# eventually need to fix this
source ~/.config/oh-my-zsh/oh-my-zsh.sh

unsetopt share_history
export LANG=en_US.UTF-8
source ~/.bashrc
export HISTFILE="$XDG_CONFIG_HOME"/zsh/history
source ~/.zshenv 
eval "$(starship init zsh)"

alias src='source ~/.config/zsh/.zshrc'
