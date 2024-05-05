#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

# st terminal enable delete key
# tput smkx # works in a terminal but not in a bash rc
printf '\033[?1h\033=' >/dev/tty

# Matlab
alias matlab="/home/jamz/MATLAB/R2019a/bin/matlab"
