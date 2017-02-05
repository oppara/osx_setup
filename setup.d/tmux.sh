#!/usr/bin/env bash
set -eu


# https://github.com/tmux-plugins/tpm
# to install timux plugins
# press prefix + I

tpm="${HOME}/.tmux/plugins/tpm"
if [ ! -d "${tpm}" ]; then
  git clone https://github.com/tmux-plugins/tpm "${tpm}"
fi


