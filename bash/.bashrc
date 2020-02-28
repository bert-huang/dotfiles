# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_environment ]; then
    . ~/.bash_environment
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
  if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
  fi
fi

export PS1="\n[${C_CYAN}\u @ \h${C_RESTORE} - ${C_GREEN}\T${C_RESTORE}]\n[${C_YELLOW}\w${C_RESTORE}\$(__git_ps1 ' - ${C_RED}%s${C_RESTORE}')]\n\\$ "

if [ -z $TMUX ]; then
  if [ -z "$(tmux list-sessions | grep ^main)" ]; then
    tmux -2 new-session -d -s main
  fi
fi

