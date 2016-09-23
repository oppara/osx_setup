#!/bin/bash
set -eu

if [ -z ${GIT_REPO_PATH+x} ]; then
  GIT_REPO_PATH="${HOME}/src/github.com/oppara"
fi

if [ ! -f "/Applications/Karabiner.app/Contents/Library/bin/karabiner" ]; then
  brew cask install karabiner
fi

src="${GIT_REPO_PATH}/osx_setup/karabiner-private.xml"
dir="${HOME}/Library/Application Support/Karabiner"
target="${dir}/private.xml"

if [  ! -d "${dir}" ]; then
  mkdir -p "${dir}"
fi

if [ -f "${target}" ]; then
  rm "${target}"
fi

ln -s "${src}" "${target}"

sh "${GIT_REPO_PATH}/osx_setup/karabiner-import.sh"
