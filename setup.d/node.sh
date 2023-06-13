#!/usr/bin/env bash
set -eu

# lsp
npm i --location=global intelephense \
  bash-language-server

# eslint
npm i --location=global eslint \
  eslint-cli \
  eslint_d \
  eslint-config-airbnb \
  eslint-plugin-import \
  eslint-plugin-node \
  eslint-plugin-react \
  eslint-plugin-jsx-a11y \
  eslint-plugin-vue \
  vue-eslint-parser \
  @typescript-eslint/parser \
  @typescript-eslint/eslint-plugin

npm i --location=global htmllint \
  jsonlint

npm i --location=global textlint \
  prh \
  @textlint-ja/textlint-rule-no-insert-dropping-sa \
  textlint-filter-rule-comments \
  textlint-rule-ja-hiragana-fukushi \
  textlint-rule-ja-hiragana-hojodoushi \
  textlint-rule-ja-no-abusage \
  textlint-rule-ja-no-mixed-period \
  textlint-rule-ja-space-around-code \
  textlint-rule-ja-space-between-half-and-full-width \
  textlint-rule-ja-unnatural-alphabet \
  textlint-rule-max-ten \
  textlint-rule-no-double-negative-ja \
  textlint-rule-no-doubled-conjunction \
  textlint-rule-no-doubled-conjunctive-particle-ga \
  textlint-rule-no-doubled-joshi \
  textlint-rule-no-dropping-the-ra \
  textlint-rule-no-hankaku-kana \
  textlint-rule-no-kangxi-radicals \
  textlint-rule-no-mix-dearu-desumasu \
  textlint-rule-no-mixed-zenkaku-and-hankaku-alphabet \
  textlint-rule-no-nfd \
  textlint-rule-no-zero-width-spaces \
  textlint-rule-prefer-tari-tari \
  textlint-rule-preset-ja-spacing \
  textlint-rule-preset-japanese \
  textlint-rule-prh \
  textlint-rule-spellcheck-tech-word
  # @proofdict/textlint-rule-proofdict
