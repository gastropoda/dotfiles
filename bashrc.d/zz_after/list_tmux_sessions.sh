if [ -n "$PS1" -a -z "$TMUX" ] ; then
  if have_exe tmux ; then
    if ! have_exe pgrep || pgrep tmux > /dev/null ; then
      lst=`tmux list-sessions`
      cnt=`echo $lst | wc -l`
      if [ "$cnt" = "1" ] ; then
        tmux a
      else
        echo "tmux sessions:"
        echo "$lst" | awk '{sub(/:$/,"",$1); print "tmux a -t", $1}'
      fi
    fi
  fi
fi
