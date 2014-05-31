#!/bin/sh

if [ -z "$1" ] ; then
  session="$(basename $(pwd))"
  title="$session"
else
  session="$@"
  title="$1"
fi

uxterm  -T "$title" -fullscreen -e /bin/bash -l -c "transient-session $session"
