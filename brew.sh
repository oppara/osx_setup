#!/bin/bash

set -eu

brew tap homebrew/versions

# PATH=$(brew --prefix coreutils)"/libexec/gnubin:$PATH"
brew install git --with-pcre
brew install oppara/homebrew/wcwidth
brew install oppara/homebrew/kcode
brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste --with-wrap-launchctl
brew install zsh --disable-etcdir
brew install zsh-completions
brew install findutils --with-default-names
brew install gnu-sed --with-default-names
brew install vim --with-lua --with-luajit
brew install tmux
brew install tig
brew install git-now
brew install hub
brew install svn
brew install hg
brew install lv
brew install nkf
brew install cmigemo
brew install ctags
brew install imagemagick
brew install tree
brew install go
brew install docker-machine
brew install docker-compose
brew install docker-swarm
brew install ghq
brew install peco
brew install peco/peco/migemogrep
brew install direnv
brew install the_silver_searcher
brew install monochromegane/pt/pt
brew install awscli
brew install ipcalc
brew install jq
brew install homebrew/binary/jsl
brew install rbenv
brew install ruby-build
brew install plenv
brew install perl-build
brew install mysql
brew install postgresql
brew install pandoc
brew install fpp
brew install cpanminus
brew install q
brew install gibo
brew install ccat
brew install p7zip
brew install node


## https://github.com/caskroom
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"
brew install caskroom/cask/brew-cask
brew cask install alfred
brew cask install karabiner
brew cask install launchrocket
brew cask install virtualbox
brew cask install vagrant-manager
brew cask install vagrant

brew cask install appcleaner
brew cask install clipmenu
brew cask install transmit
brew cask install 0xed

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

chsh -s /usr/local/bin/zsh
