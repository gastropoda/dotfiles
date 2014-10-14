function have_function() {
  [ `type -t "$1"` == "function" ]
}
