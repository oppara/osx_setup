#!/usr/bin/env bash
set -eu

comands() {
  cat << EOF
revealgo github.com/yusukebe/revealgo/cmd/revealgo
memo github.com/mattn/memo
EOF
}

install() {
  input="$(cat)"
  echo "${input}" |
  while read -r line
  do
    cmd=$(echo "${line}" | awk '{ print $1 }')
    url=$(echo "${line}" | awk '{ print $2 }')
    if ! type "${cmd}" > /dev/null 2>&1; then
      echo "go get ${url}"
      go get "${url}"
    fi
  done
}

comands | install
