#!/usr/bin/env bash
set -eu

bin="${HOME}/bin"
if [ ! -d "${bin}" ]; then
  git clone git@github.com:oppara/bin.git "${bin}"
fi
unset bin

golibexec="/usr/local/opt/go/libexec"
PATH="$PATH:${golibexec}/bin"
export GOPATH="${HOME}"
export GOROOT=${golibexec}
unset golibexec

go get github.com/motemen/ghq
go get github.com/peco/migemogrep
# go get github.com/yusukebe/revealgo/cmd/revealgo
# go get github.com/mattn/memo
# go get github.com/b4b4r07/gist
