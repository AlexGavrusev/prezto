#
# Loads asdf.
#
# Authors:
#   Alex Gavrusev <alex@gavrusev.dev>
#

# Possible manually installed asdf into the shell session.
if [[ -x "${asdf_path::=${ASDF_DIR:-$HOME/.asdf}}/asdf.sh" ]]; then
  . $asdf_path

# Load brew installed asdf into the shell session.
elif (( $+commands[brew] )) \
      && [[ -x "${asdf_path::="$(brew --prefix asdf 2> /dev/null)"/libexec/asdf.sh}" ]]; then
  . $asdf_path

# Load pacman installed asdf into the shell session.
elif (( $+commands[pacman] )) \
      && [[ -x "${asdf_path::=/opt/asdf-vm/asdf.sh}" ]]; then
  . $asdf_path
fi
