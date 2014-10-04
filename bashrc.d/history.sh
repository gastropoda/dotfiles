shopt -s histappend
if [[ "$PROMPT_COMMAND" != *"history -a"* ]] ; then
  export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"
fi
