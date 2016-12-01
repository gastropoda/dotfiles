alias ls="ls ${LS_COLOR_FLAG:---color=auto} -h"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"
alias df="df -h"
alias du="du -h"
alias grep="grep --color=auto"
alias -- -="cd -"
function md() {
  mkdir $1 && cd $1
}

if have_exe docker ; then
  alias d=docker
fi

if have_exe docker-compose ; then
  alias dc=docker-compose

  function dctop() {
    htop -p $(dc ps -q | xargs docker inspect -f {{.State.Pid}} | paste -sd "," -)
  }
fi

if have_exe docker-machine ; then
  alias dm=docker-machine
fi

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
alias glog="git log"
if [ "$(type -t __git_complete)" == "function" ] ; then
  __git_complete gc _git_checkout
  __git_complete glog _git_log
fi

alias b="bundle exec"

have_exe autossh && alias ssh="autossh -M 0"

if have_exe csvlook ; then
  function csvless() {
    csvlook "$@" | less
  }
  SSV_OPTS="-d ';' -e Latin-1"
  alias ssvlook="csvlook $SSV_OPTS"
  alias ssvclean="csvclean $SSV_OPTS"
  alias ssvcut="csvcut $SSV_OPTS"
  alias ssvgrep="csvgrep $SSV_OPTS"
  alias ssvjoin="csvjoin $SSV_OPTS"
  alias ssvsort="csvsort $SSV_OPTS"
  alias ssvstack="csvstack $SSV_OPTS"
  alias ssvformat="csvformat $SSV_OPTS"
  alias ssvjson="csvjson $SSV_OPTS"
  alias ssvsql="csvsql $SSV_OPTS"
  alias ssvstat="csvstat $SSV_OPTS"
  alias ssvless="csvless $SSV_OPTS"
  TSV_OPTS="-t -e Latin-1"
  alias tsvlook="csvlook $TSV_OPTS"
  alias tsvclean="csvclean $TSV_OPTS"
  alias tsvcut="csvcut $TSV_OPTS"
  alias tsvgrep="csvgrep $TSV_OPTS"
  alias tsvjoin="csvjoin $TSV_OPTS"
  alias tsvsort="csvsort $TSV_OPTS"
  alias tsvstack="csvstack $TSV_OPTS"
  alias tsvformat="csvformat $TSV_OPTS"
  alias tsvjson="csvjson $TSV_OPTS"
  alias tsvsql="csvsql $TSV_OPTS"
  alias tsvstat="csvstat $TSV_OPTS"
  alias tsvless="csvless $TSV_OPTS"
fi
