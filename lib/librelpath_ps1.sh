# relpath

ps1path() {
  if [ -z "$(env | grep '^RELPATH=')" ] ; then
    echo "$1"
    return 0
    fi
  local relpath_string="$(relpath)"
  local beacon=""
  if [ -n "$relpath_string" ] ; then
    if ! [ "x/" = "x${relpath_string:0:1}" ] ; then
      beacon="=/"
      fi
  else
    beacon="="
    fi
  local beacon_string="$beacon$relpath_string"
  if [ "${#beacon_string}" -gt "${#1}" ]; then
    echo "$1"
  else
    echo "$beacon_string"
    fi
  return 0
  }

