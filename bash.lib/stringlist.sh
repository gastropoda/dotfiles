stringlist_append() {
  declare -n stringlist=$1
  appendage="$2"
  stringlist="${stringlist/$appendage ;/}"
  stringlist="${stringlist/; $appendage/}"
  stringlist="${stringlist/$appendage/}"
  stringlist="${stringlist:+$stringlist ;} $appendage"
}
