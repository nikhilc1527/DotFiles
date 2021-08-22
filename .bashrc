#
# ~/.bashrc
#

# If not running interactively, don't do anything

neofetch

source $HOME/.profile

[[ $- != *i* ]] && return

alias ls='lsd -la --color=auto'

alias pip='pip3'
alias python='python3'

alias d='devour'

alias hw='[ -f hw.tex ] && mkdir temp && pdflatex -output-directory=temp hw.tex && devour zathura temp/hw.pdf && rm -rf temp'

alias g+='g++ -fsanitize=address,undefined -g -oout -std=c++17 '

alias lf='lfcd'

alias dwmblocks_update='last_pwd=$PWD; cd ~/.local/src/dwmblocks/ && make && plz make install && killall dwmblocks && setsid -f dwmblocks && cd $last_pwd && unset last_pwd'

alias clear='echo "use <c-l> instead!"'

lfcd() {
    tmp="$(mktemp)"
    lfrun -last-dir-path="$tmp" "$@"
    dir="$(/usr/bin/cat "$tmp")"
    /usr/bin/rm -f "$tmp"
    cd "$dir"
}

alias ec='devour emacsclient -a \"\" -c'
# alias ect='emacsclient -a \"\" -t'

# alias sec='ec /sudo::$1'
# alias sect='ect /sudo::$1'

sec() {
    ec /sudo::$1
}
# sect() {
#     ect /sudo::$1
# }

alias df='df -h'

alias update='yay -Syyu --devel --timeupdate'

alias x='extract -r'

alias gk='echo RELOADAGENT | gpg-connect-agent'

# alias sudo='plz'

ek() {
    emacsclient -e '(save-buffers-kill-emacs)'
}

alias dual_scr='xsetwacom set "HID 256c:006d Pen stylus" Area 0 0 44200 27600'
alias right_scr='xsetwacom set "HID 256c:006d Pen stylus" Area -44200 0 44200 27600'
alias left_scr='xsetwacom set "HID 256c:006d Pen stylus" Area 0 0 88400 27600'

alias cat='bat'

scale() {
    ffmpeg -i $1 -vf scale=$2:$3 $4
}

mv_download() {
    name=$(ls -t ~/Downloads/ | head -n1 | sed 's/ /\\ /g')
    # echo "mv ~/Downloads/$name $1"
    echo ~/Downloads/$name $1 | xargs mv
}

mv_picture() {
    name=$(ls -t ~/Pictures/ | head -n1 | sed 's/ /\\ /g')
    # echo "mv ~/Downloads/$name $1"
    echo ~/Pictures/$name $1 | xargs mv
}

network_scan() {
    nmap -sL "192.168.86.*" | /usr/bin/grep \(1 | awk '{ printf "%-30s %s\n", $5, $6 }'
}

alias ryujinx="env AMD_DEBUG=w32ge,w32ps,w32cs,nohyperz,nofmask glsl_zero_init=true radeonsi_clamp_div_by_zero=true mesa_glthread=true vblank_mode=0 MESA_NO_ERROR=1 GDK_BACKEND=x11 /home/nikhil/.local/share/Ryujinx/Ryujinx"

# alias config='/usr/bin/git --git-dir=$HOME/MyFiles/Nikhil/DotFiles --work-tree=$HOME'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "$XDG_DATA_HOME/fzf.sh" ] && bash "$XDG_DATA_HOME"/fzf.sh
