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

  # choose short or long prompt depending on whether user has issued a command
  SHORT_PS1="$ "
  LONG_PS1="
$(ansi $green)\u$(ansi)@$(ansi $magenta)\h$(ansi):$(ansi $blue)\w$(ansi)
\$ "
  function after_command
  {
    rt_stop
    if [ "$last_command" != "after_command" ] ; then
      export PS1="$LONG_PS1"
    else
      export PS1="$SHORT_PS1"
    fi
  }
  PROMPT_COMMAND=after_command

  export PS1="$LONG_PS1"
fi
