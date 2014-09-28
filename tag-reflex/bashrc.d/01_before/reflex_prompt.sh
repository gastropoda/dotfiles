function resolve_ip() {
  dig "$1" @resolver1.opendns.com +short
}

THIS_IP="$(resolve_ip myip.opendns.com)"

for env in production testing fragile ; do
  url="${env}.dpireflex.com"
  env_ip="$(resolve_ip $url)"
  if [ "$THIS_IP" == "$env_ip" ] ; then
    REFLEX_ENV="$env"
  fi
done

case $REFLEX_ENV in
  production)
    color=$bright_red
    ;;
  testing)
    color=$bright_blue
    ;;
  fragile)
    color=$bright_green
    ;;
esac

PS1_TAG=" [$(ansi $color)${REFLEX_ENV}$(ansi)]"
export PS1_TAG
export REFLEX_ENV
