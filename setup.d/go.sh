#!/usr/bin/env bash
set -eu


golibexec="/opt/homebrew/opt/go/libexec"
PATH="$PATH:${golibexec}/bin"
export GOPATH="${HOME}"
export GOROOT=${golibexec}
unset golibexec

go install github.com/mattn/memo@latest
go install github.com/x-motemen/ghq@latest
# go install github.com/yusukebe/revealgo/cmd/revealgo
# go install github.com/b4b4r07/gist
