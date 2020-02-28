alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vim='nvim'
alias tmux='tmux -2'
alias cls='clear'

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls='ls -G'
  alias srcbashrc='source ~/.bash_profile'
else
  alias ls='ls --color=auto'
  alias srcbashrc='source ~/.bashrc'
  
  alias c='xclip -selection clipboard'
  alias p='xclip -selection clipboard -o'
  alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
fi

alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -lrth'
alias lt='ls -lrth'
  
