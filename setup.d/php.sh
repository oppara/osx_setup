#!/usr/bin/env bash
set -eu

WP_CLI_URL="https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
WP_CLI_PATH="/usr/local/bin/wp"

# https://github.com/shivammathur/homebrew-php
brew tap shivammathur/php
brew install shivammathur/php/php@5.6
brew install shivammathur/php/php@7.0
brew install shivammathur/php/php@7.1
brew install shivammathur/php/php@7.2
brew install shivammathur/php/php@7.3
brew install shivammathur/php/php@7.4
brew install shivammathur/php/php@8.0


# composer
curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

composer selfupdate

composer global require stecman/composer-bash-completion-plugin dev-master
composer global require phpunit/phpunit
composer global require friendsofphp/php-cs-fixer
composer global require squizlabs/php_codesniffer
composer global require phpmd/phpmd
composer global require phpstan/phpstan

export PATH="${PATH}:${HOME}/.composer/vendor/bin"


# wordpress
curl  ${WP_CLI_URL} -o ${WP_CLI_PATH}
chmod 0755 ${WP_CLI_PATH}

composer global require "wp-coding-standards/wpcs:*"
phpcs --config-set installed_paths ~/.composer/vendor/wp-coding-standards/wpcs/
phpcs -i

composer global show -s
