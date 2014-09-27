if locale -a | grep ^en_US.UTF-8 ; then
  # software messages in American
  export LANG="en_US.UTF-8"
fi

if locale -a | grep ^en_GB.UTF-8 ; then
  # start week on Monday
  export LC_TIME="en_GB.UTF-8"
  # A4 in stead of Letter
  export LC_PAPER="en_GB.UTF-8"
  # mm in stead of Inches
  export LC_MEASUREMENT="en_GB.UTF-8"
fi
