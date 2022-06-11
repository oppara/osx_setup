#!/usr/bin/env bash
set -eu

for cmd in "diff-highlight" \
  "git-jump"; do
  src="/opt/homebrew/share/git-core/contrib/${cmd}/${cmd}"
  target="/usr/local/bin/${cmd}"
  if [ -f "${src}" -a ! -L "${target}" ]; then
    ln -s "${src}" "${target}"
  fi
done

