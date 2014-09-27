# find file in one of the given directories
# Usage:
#
#   find_file FILENAME DIR1 DIR2 ...
#
# exit codes:
# 0 - found
# 1 - not found
#
# in case of success prints path to file (DIR/FILENAME) to stdout
#
# Example:
#
#   FOO=$(find_file path.bash ~ ~/bin ~/bash) && echo FOUND $FOO || echo NOT FOUND
#
function find_file
{
  local FILE=$1
  shift
  while [ -n "$1" ] ; do
    local DIR=$1
    if [ -f "$DIR/$FILE" ] ; then
      echo $DIR/$FILE
      return 0
    fi
    shift
  done
  return 1
}

# Extend dirlist list stored in given variable by existing directories from the
# rest of the arguments.
# Usage:
#
#   extend_dir_list [-a] PATH_VAR DIR1 DIR2 ...
#
# -a : append (default is to prepend)
# PATH_VAR is the name of the variable to extend

function extend_dir_list
{
  local mode=prepend
  if [ "$1" = "-a" ] ; then
    mode=append
    shift
  fi
  local VAR=$1
  shift
  eval "local LIST=\"\$$VAR\""
  while [[ $# -gt 0 ]] ; do
    dir="$1"
    shift
    if [ -d "$dir" ] && [[ :$LIST: != *:"$dir":* ]] ; then
      if [ -z "$LIST" ] ; then
        LIST="$dir"
      else
        case $mode in
          prepend)
            LIST="$dir:$LIST"
            ;;
          append)
            LIST="$LIST:$dir"
            ;;
        esac
      fi
    fi
  done
  eval "$VAR=\"$LIST\""
  export $VAR
}

# Source a bash file if it exists and is readable
function source_if_exists
{
  local file="$1"
  test -r "$file" && . "$file"
}
