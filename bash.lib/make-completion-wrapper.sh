# http://unix.stackexchange.com/a/310089/57441
#
# Wraps a completion function, eg for use with an alias.
# Usage:
# make-completion-wrapper <actual completion function> <name of new func.>
#                         <command name> <list supplied arguments>
# eg.
#   alias agi='apt-get install'
#   make-completion-wrapper _apt_get _apt_get_install apt-get install
#     # defines a function called _apt_get_install (that's $2) that will
#     # complete the 'agi' alias.
#   complete -F _apt_get_install agi
function make-completion-wrapper {
  local function_name="$2"
  local arg_count=$(( $#-3 ))
  local comp_function_name="$1"
  shift 2
  local funktion="function $function_name {
      (( COMP_CWORD += $arg_count ))
      COMP_WORDS=( \"\$@\" \${COMP_WORDS[@]:1} )
      \"$comp_function_name\"
    }"
  eval "$funktion"
}
export -f make-completion-wrapper
