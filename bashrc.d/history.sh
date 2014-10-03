shopt -s histappend
echo "append history -a"
if [[ "$PROMPT_COMMAND" != *"history -a"* ]] ; then
  export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"
fi
