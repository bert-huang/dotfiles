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
  
alias mc='mvn clean'
alias mi='mvn -T 1C install -DskipTests'
alias mci='mvn -T 1C clean install -DskipTests'
alias mcp='mvn -T 1C clean package -DskipTests'
alias mcc='mvn -T 1C clean compile -DskipTests'
alias mct='mvn clean test'
alias mdl='mvn dependency:list -DincludeParents=true'
alias mdt='mvn dependency:tree -DincludeParents=true'
alias mdc='mvn dependency:copy-dependencies'
alias mda='mvn dependency:analyze'
alias mpc='mvn project:prepareclient'

alias j8="ln -nfs /usr/lib/jvm/java-8-oracle $HOME/.java_home"
alias j11="ln -nfs /usr/lib/jvm/adoptopenjdk-11-hotspot-amd64 $HOME/.java_home"

alias ksqlnochk='export KWSQL_NOCHECK=true'

alias g='git'

alias svnE='svn status | grep "^!" | cut -d! -f2 | xargs'
alias svnQ='svn status | grep "^?" | cut -d? -f2 | xargs'
alias svnM='svn status | grep "^\s*M" | cut -dM -f2 | xargs'

alias touchall='find . -type f -exec touch {} \;'
alias base='readlink -f /kiwi/revisions/current'
alias sl='/usr/games/sl -e'

alias connect='xrandr --output HDMI1 --auto --right-of eDP1'
alias disconnect='xrandr --output HDMI1 --off'

alias ovpn-kiwiplan='sudo openvpn --config $HOME/.local/ovpn/kiwiplan.ovpn'
alias ovpn-hoiho='sudo openvpn --config $HOME/.local/ovpn/hoiho.ovpn'

