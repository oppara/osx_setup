#!/usr/bin/env bash
set -Ceu

gh extension install https://github.com/yusukebe/gh-markdown-preview

gh extension install https://github.com/cappyzawa/gh-ghq-cd
gh alias set cd ghq-cd
