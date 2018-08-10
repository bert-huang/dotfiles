# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF --block-size=K'
alias la='ls -A --block-size=K'
alias l='ls -lrt'
alias lt='ls -lrt --block-size=K'

alias srcbashrc='source ~/.bashrc'
alias vim='nvim'
alias tmux='tmux -2'

alias cls='clear'
alias c='xclip -selection clipboard'
alias p='xclip -selection clipboard -o'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
