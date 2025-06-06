#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
export XDG_RUNTIME_DIR=/run/user/$(id -u)
alias Hyprland='exec dbus-run-session Hyprland'
