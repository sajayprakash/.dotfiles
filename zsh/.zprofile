#!/bin/zsh
#
## profile file. Runs on login. Environmental variables are set here.
#
## If you don't plan on reverting to bash, you can remove the link in ~/.profile
## to clean up.
#
## Adds `~/.local/bin` to $PATH
export PATH=$HOME/.local/bin:$PATH

#unsetopt PROMPT_SP
#
## Default programs:
export EDITOR="vim"
export TERMINAL="st"
#export BROWSER="brave"
#
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	  exec startx
fi
