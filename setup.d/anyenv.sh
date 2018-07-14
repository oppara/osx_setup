#!/usr/bin/env bash
set -eu

target="${HOME}/.anyenv"
if [ ! -d "${target}" ]; then
  git clone https://github.com/riywo/anyenv "${target}"
fi

PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

target="${target}/plugins/anyenv-update"
if [ ! -d "${target}" ]; then
  git clone https://github.com/znz/anyenv-update.git "${target}"
fi
unset target

anyenv update
