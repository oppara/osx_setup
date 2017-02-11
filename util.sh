#!/bin/bash
set -eu

install_package() {
  local input="$(cat)"
  echo "$input" |
  while read -r line
  do
    local name=$(echo "$line" | awk '{ print $1 }')
    local cmd=$(echo "$line" | awk '{ $1="";print }')
    if ! type "$name" > /dev/null 2>&1; then
      echo "install $name"
      $cmd
    fi
  done
}


