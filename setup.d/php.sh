#!/usr/bin/env bash
set -eu

brew install php \
  composer \
  php-cs-fixer \
  php-code-sniffer \
  phpunit \
  phpmd \
  phpstan \
  wp-cli \
  wp-cli-completion

composer global show -s
