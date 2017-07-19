
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias pac='sudo pacman-color'
alias calc='octave-cli'
alias xrandrhdmi='xrandr --output eDP1 --auto --output HDMI1 --auto --above eDP1 --set "Broadcast RGB" "Full"'
alias xrandright='xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1 --set "Broadcast RGB" "Full"'
alias xrandroff='xrandr --output eDP1 --auto --output HDMI1 --off'
alias webcam='mpv tv:// --tv-driver=v4l2 --tv-device=/dev/video0'
alias minexmr='./rascunhos/cpuminer-multi/minerd -a cryptonight -o stratum+tcp://fcn-xmr.pool.minergate.com:45590 -u leuck.r@gmail.com -p x'
export EDITOR=/usr/bin/vim
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORMTHEME=qt5ct
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
