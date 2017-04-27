
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias pac='sudo pacman-color'
export EDITOR=/usr/bin/vim
export _JAVA_AWT_WM_NONREPARENTING=1
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
