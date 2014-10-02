alias ls="ls ${LS_COLOR_FLAG:---color=auto} -h"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"
alias df="df -h"
alias du="du -h"
alias grep="grep --color=auto"
alias -- -="cd -"
if have_exe vim ; then
  alias vi=vim
  export EDITOR=vim
  alias vig="vim .git/index"
fi
have_exe gnome-open && alias open='gnome-open > /dev/null 2>&1'
have_exe ack-grep && alias ack='ack-grep'
have_exe tree && alias tree="tree -CDt"

alias gc="git checkout"
alias gcb="git checkout -b"
alias gst="git status"
if [ "$(type -t __git_complete)" == "function" ] ; then
  __git_complete gc _git_checkout
fi

alias b="bundle exec"
