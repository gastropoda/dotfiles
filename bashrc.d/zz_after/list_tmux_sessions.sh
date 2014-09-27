if [ -n "$PS1" -a -z "$TMUX" ] ; then
  if have_exe tmux ; then
    if ! have_exe pgrep || pgrep tmux > /dev/null ; then
      echo "tmux sessions:"
      tmux list-sessions | awk '{sub(/:$/,"",$1); print "tmux a -t", $1}'
    fi
  fi
fi

