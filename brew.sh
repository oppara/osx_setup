#!/bin/bash

set -eu

# PATH=$(brew --prefix coreutils)"/libexec/gnubin:$PATH"
brew install git --with-pcre
brew install coreutils
brew install findutils --default-names
brew install gnu-sed --default-names
brew install oppara/homebrew/wcwidth
brew install oppara/homebrew/kcode
brew install reattach-to-user-namespace --wrap-pbcopy-and-pbpaste --wrap-launchctl
brew install zsh --disable-etcdir
brew install zsh-completions
brew install vim --with-lua --with-luajit
brew install tmux
brew install tig
brew install hub
brew install git-now
brew install git-ftp
brew install svn
brew install hg
brew install wget --enable-iri
brew install siege
brew install mcrypt
brew install lv
brew install nkf
brew install cmigemo
brew install mecab
brew install mecab-ipadic
brew install lha
brew install unar
brew install rar
brew install imagemagick
brew install tree
brew install go
brew install boot2docker
brew install motemen/ghq/ghq
brew install peco/peco/peco
brew install peco/peco/migemogrep
brew install direnv
brew install the_silver_searcher
brew install the_platinum_searcher
brew install awscli
brew install ipcalc
brew install jq
brew install homebrew/binary/jsl
brew install rbenv
brew install ruby-build
brew install plenv
brew install perl-build
brew install nodenv
brew install mysql --enable-memcached --with-blackhole-storage-engine --with-archive-storage-engine mysql
brew install postgresql
brew install ant
brew install pandoc
brew install pstree


## https://github.com/caskroom
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"
brew install caskroom/cask/brew-cask
brew cask install alfred
brew cask install java
brew cask install eclipse-java
brew cask install karabiner
brew cask install kobito
brew cask install launchrocket
brew cask install virtualbox
brew cask install vagrant-manager
brew cask install vagrant

brew cask install appcleaner
brew cask install clipmenu
brew cask install coteditor
brew cask install growlnotify
brew cask install sequel-pro
brew cask install transmit
brew cask install 0xed
brew cask install macvim-kaoriya

# font
brew cask install oppara/homebrew/font-migu-2m

# quicklook
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package
brew cask install webpquicklook
# brew cask install quicklook-japanese-text
brew cask install quicklook-colorxml


brew cleanup
