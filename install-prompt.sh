#!/bin/bash
./install-relpath.sh

cat >> ~/.bashrc << "EOF"

# relpath
source /usr/local/lib/librelpath_ps1.sh
if [ -z "$ps1path_wrapped" ]; then
  PS1=$(echo "$PS1" | sed -E 's/\\w/$(ps1path "\\w")/g')
  ps1path_wrapped="yes"
  fi

EOF
