run_scripts() {
  for script in $1/*; do
    if [ -d "$script" ] ; then
      run_scripts $script
    elif [ -x "$script" ] ; then
      . $script
    fi
  done
}

