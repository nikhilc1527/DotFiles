COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
export ZSH_DISABLE_COMPFIX=true

fpath=("~/.config/zsh/completions/" $fpath)

autoload -U compinit
compinit

for config_file (~/.config/zsh/init_scripts/*.zsh); do
  source "$config_file"
done
unset custom_config_file

unsetopt share_history
export LANG=en_US.UTF-8
source ~/.bashrc
export HISTFILE="$XDG_CONFIG_HOME"/zsh/history
source ~/.zshenv 

alias src='source ~/.config/zsh/.zshrc'

eval "$(starship init zsh)"

[ "$(tty)" = "/dev/tty1" ] && startx
