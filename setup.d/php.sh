#!/usr/bin/env bash
set -eu

PHP_VERSION="7.1"
COMPOSER_URL="https://getcomposer.org/installer"
COMPOSER_PATH="/usr/local/bin/composer"
WP_CLI_URL="https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"
WP_CLI_PATH="/usr/local/bin/wp"

# https://php-osx.liip.ch/
curl -s https://php-osx.liip.ch/install.sh | bash -s ${PHP_VERSION}
sudo  sh -c "echo 'date.timezone = Asia/Tokyo' > /usr/local/php5/php.d/99-my.ini"
export PATH=/usr/local/php5/bin:${PATH}


# composer
curl -sSk ${COMPOSER_URL} | php
chmod +x composer.phar
mv composer.phar ${COMPOSER_PATH}

composer selfupdate

composer global require stecman/composer-bash-completion-plugin dev-master
composer global require phpunit/phpunit
composer global require squizlabs/php_codesniffer
composer global require phpmd/phpmd

export PATH="${PATH}:${HOME}/.composer/vendor/bin"


# wordpress
curl  ${WP_CLI_URL} -o ${WP_CLI_PATH}
chmod 0755 ${WP_CLI_PATH}

composer global require "wp-coding-standards/wpcs:*"
phpcs --config-set installed_paths ~/.composer/vendor/wp-coding-standards/wpcs/
phpcs -i
