#!/usr/bin/env bash
set -eu

for cmd in "diff-highlight" \
  "git-jump"; do
  src="$(brew --prefix)/share/git-core/contrib/${cmd}/${cmd}"
  target="$(brew --prefix)/bin/${cmd}"
  if [ -f "${src}" -a ! -L "${target}" ]; then
    ln -s "${src}" "${target}"
  fi
done

