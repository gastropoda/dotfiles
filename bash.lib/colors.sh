function ansi {
  if [ -n "$1" ] ; then
    echo "\[\e[01;$1m\]"
  else
    echo "\[\e[00m\]"
  fi
}

black=30
red=31
green=32
yellow=33
blue=34
magenta=35
cyan=36
white=37
bright_black="30;1"
bright_red="31;1"
bright_green="32;1"
bright_yellow="33;1"
bright_blue="34;1"
bright_magenta="35;1"
bright_cyan="36;1"
bright_white="37;1"
