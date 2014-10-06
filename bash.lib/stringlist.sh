stringlist_append() {
  local stringlist=${!1}
  local appendage="$2"
  stringlist="${stringlist/$appendage ;/}"
  stringlist="${stringlist/; $appendage/}"
  stringlist="${stringlist/$appendage/}"
  stringlist="${stringlist:+$stringlist ;} $appendage"
  eval "$1='$stringlist'"
}


stringlist_prepend() {
  local stringlist=${!1}
  local prependage="$2"
  stringlist="${stringlist/$prependage ;/}"
  stringlist="${stringlist/; $prependage/}"
  stringlist="${stringlist/$prependage/}"
  stringlist="$prependage ${stringlist:+ ; $stringlist}"
  eval "$1='$stringlist'"
}
