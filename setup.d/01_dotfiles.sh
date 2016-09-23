#!/bin/bash
set -eu

PATH="/usr/local/bin:${PATH}"
ghq_root="${HOME}/src"
git_repo="${ghq_root}/github.com/oppara"

git config --global ghq.root "${ghq_root}"
ghq get oppara/dotfiles
ghq get oppara/dot.vim
ghq get oppara/bin
rm -f "${HOME}/.gitconfig"

rm -rf "${HOME}/bin"
ln -s "$git_repo/bin" "${HOME}/bin"
sh $git_repo/dotfiles/setup.sh
sh $git_repo/dot.vim/setup.sh
