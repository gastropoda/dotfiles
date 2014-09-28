. /engineyard/bin/env.sh

EY_ENVIRONMENT_SUFFIX=${EY_ENVIRONMENT_NAME/*_}

function resolve_cname() {
  dig "$1" @resolver1.opendns.com CNAME +short
}

for env in production testing fragile ; do
  env_host="${env}.dpireflex.com"
  env_cname=$(resolve_cname $env_host)
  env_short=${env_cname/.*}
  if [ "$EY_ENVIRONMENT_SUFFIX" == "$env_short" ] ; then
    REFLEX_ENV="$env"
  fi
done

case $REFLEX_ENV in
  production)
    color=$bright_red
    ;;
  testing|fragile)
    color=$bright_green
    ;;
esac

PS1_HOST="$(ansi $magenta)$HOSTNAME$(ansi).$(ansi $bright_cyan)$EY_ENVIRONMENT_NAME$(ansi)($(ansi $color)${REFLEX_ENV}$(ansi))"
export PS1_HOST
export REFLEX_ENV
