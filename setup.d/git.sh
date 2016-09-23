#!/bin/bash
set -eu

src="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight"
target="/usr/local/bin/diff-highlight"
if [ -f "${src}" -a ! -L "${target}" ]; then
  ln -s "${src}" "${target}"
fi

