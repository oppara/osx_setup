#!/usr/bin/env bash
set -Ceu

gh extension install https://github.com/yusukebe/gh-markdown-preview || true

gh extension install https://github.com/cappyzawa/gh-ghq-cd || true
gh alias set cd ghq-cd --clobber
