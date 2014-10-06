stringlist_append() {
  local stringlist=${!1}
  local appendage="$2"
  stringlist="${stringlist/$appendage ;/}"
  stringlist="${stringlist/; $appendage/}"
  stringlist="${stringlist/$appendage/}"
  stringlist="${stringlist:+$stringlist ;} $appendage"
  eval "$1='$stringlist'"
}
