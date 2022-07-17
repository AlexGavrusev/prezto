#
# Loads asdf.
#
# Authors:
#   Alex Gavrusev <alex@gavrusev.dev>
#

# Return if requirements are not found.
if (( ! $+commands[asdf] )); then
  return 1
fi

if [[ -f ${java_home_script::="$HOME/.asdf/plugins/java/set-java-home.zsh"} ]] && \
  asdf where java &> /dev/null \
; then
  . $java_home_script
fi
