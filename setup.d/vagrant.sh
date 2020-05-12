#!/usr/bin/env bash
set -eu

if ! type vagrant > /dev/null 2>&1; then
  brew cask install vagrant
fi

# dotenvを利用して環境ごとでVagrantfileの設定値を変更してみる
# http://blog.glidenote.com/blog/2014/02/26/vagrant-dotenv/
vagrant plugin install dotenv

vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-docker-compose
# vagrant plugin install vagrant-omnibus
# vagrant plugin install vagrant-berkshelf
