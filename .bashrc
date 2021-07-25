#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vpn="sudo protonvpn c"
alias ticker="ticker --show-summary --show-tags --show-fundamentals --show-holdings --show-separator -w"
alias share="bash $HOME/Documents/Mon2Cam/Mon2Cam.sh"
alias art='php artisan'
alias homestead="cd $HOME/Homestead && vagrant $*"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
