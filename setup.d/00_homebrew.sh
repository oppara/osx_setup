#!/bin/bash
set -eu

SETUP_PATH="${HOME}/src/github.com/oppara/osx_setup"
# brewfile="${SETUP_PATH}/Brewfile"
brewfile="${SETUP_PATH}/Brewfile.test"

if ! type brew > /dev/null 2>&1; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file="${brewfile}"

sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells"
chsh -s /usr/local/bin/zsh

