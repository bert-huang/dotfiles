alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vim='nvim'
alias tmux='tmux -2'
alias cls='clear'
alias docker='sudo /usr/bin/docker'

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls='ls -G'
  alias ll='ls -alFh'
  alias la='ls -A'
  alias l='ls -lrth'
  alias lt='ls -lrth'

  alias srcbashrc='source ~/.bash_profile'
else
  alias ls='ls --color=auto'
  alias ll='ls -alF --block-size=K'
  alias la='ls -A --block-size=K'
  alias l='ls -lrt'
  alias lt='ls -lrt --block-size=K'
  
  alias srcbashrc='source ~/.bashrc'
  
  alias c='xclip -selection clipboard'
  alias p='xclip -selection clipboard -o'
  alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
fi
