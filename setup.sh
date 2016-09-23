#!/usr/bin/env bash
set -eu

SETUP_PATH="${HOME}/src/github.com/oppara/osx_setup"

if [  ! -d "${SETUP_PATH}" ]; then
  git clone https://github.com/oppara/osx_setup.git "${SETUP_PATH}"
fi

cd "${SETUP_PATH}"
git pull

for file in ${SETUP_PATH}/setup.d/[0-9]*.sh; do
  source "$file"
done

