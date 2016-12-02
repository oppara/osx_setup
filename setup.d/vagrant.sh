#!/bin/bash
set -eu

if ! type vagrant > /dev/null 2>&1; then
  brew cask install vagrant
fi

vagrant plugin install dotenv
vagrant plugin install vagrant-aws
# vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-docker-compose
# vagrant plugin install vagrant-omnibus


