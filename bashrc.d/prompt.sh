if [ -n "$PS1" ] ; then
  function pretty_seconds
  {
    sec=$(($1 % 60))
    min=$(($1 / 60 % 60))
    hrs=$(($1 / 60 / 60))
    if [[ $hrs != 0 ]] ; then
      printf '%d:%02d:%02d' $hrs $min $sec
    elif [[ $min != 0 ]] ; then
      printf '%d:%02d' $min $sec
    else
      printf "$sec sec"
    fi
  }

  function rt_start
  {
    rt_start_time=${rt_start_time:-$SECONDS}
  }
  function rt_stop
  {
    [ -n "$rt_start_time" ] || return
    rt_elapsed=$(($SECONDS - $rt_start_time))
    if [ $rt_elapsed != '0' ] ; then
      echo
      echo "     Command: $last_command"
      echo "Elapsed time: $(pretty_seconds $rt_elapsed)"
    fi
    unset rt_start_time
  }

  # execute before each command
  function before_command
  {
    rt_start
    last_command=$this_command
    this_command=$BASH_COMMAND
  }
  trap before_command DEBUG

  PS1_USER="${PS1_USER:-$(ansi $green)\u$(ansi)}"
  PS1_HOST="${PS1_HOST:-$(ansi $magenta)\H$(ansi)}"
  PS1_CWD="${PS1_CWD:-$(ansi $blue)\w$(ansi)}"
  # choose short or long prompt depending on whether user has issued a command
  SHORT_PS1="$ "
  LONG_PS1="\n$PS1_USER@$PS1_HOST:$PS1_CWD$PS1_TAG"
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_DESCRIBE_STYLE=branch
  GIT_PS1_SHOWCOLORHINTS=1
  function after_command
  {
    rt_stop
    if [ "$last_command" != "after_command" ] ; then
      if [ "`type -t __git_ps1`" == "function" ] ; then
        GIT_PS1_SHOWUPSTREAM="verbose name"
        __git_ps1 "$LONG_PS1" "\n$SHORT_PS1" " | %s"
      else
        export PS1="$LONG_PS1\n$SHORT_PS1"
      fi
    else
      if [ "`type -t __git_ps1`" == "function" ] ; then
        GIT_PS1_SHOWUPSTREAM="verbose"
        __git_ps1 "" "$SHORT_PS1" "%s\n"
      else
        export PS1="$SHORT_PS1"
      fi
    fi
  }
  export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} after_command"

  export PS1="$LONG_PS1"
fi
