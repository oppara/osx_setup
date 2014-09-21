# Usage: `brew bundle Brewfile`

update


# PATH=$(brew --prefix coreutils)"/libexec/gnubin:$PATH"
install coreutils
install findutils --default-names
install gnu-sed --default-names

install oppara/homebrew/wcwidth
install oppara/homebrew/kcode

install zsh --disable-etcdir || brew upgrade zsh --disable-etcdir || true
install zsh-completions

install vim --with-lua --with-luajit || brew upgrade vim --with-lua --with-luajit || true
install tmux
install reattach-to-user-namespace --wrap-pbcopy-and-pbpaste --wrap-launchctl

install git --with-pcre || brew upgrade git --with-pcre || true
install tig
install hub
install git-now
install git-ftp
install svn
install hg

install the_silver_searcher
install autojump
install wget --enable-iri
install w3m
install automake
install gettext
install readline
install re2c
install mcrypt
install lv
install nkf
install lha
install unar
install cmigemo
install imagemagick
install sqlmap
install tree
install webkit2png
install bash

install jq
install yajl
install homebrew/binary/jsl
install selenium-server-standalone

install mysql --enable-memcached --with-blackhole-storage-engine --with-archive-storage-engine mysql
install postgresql

install go
install motemen/ghq/ghq
install peco/peco/peco
install peco/peco/migemogrep
install direnv
install oppara/homebrew/the_platinum_searcher
install rbenv
install ruby-build
install plenv
install perl-build
install nodenv
install --HEAD josegonzalez/php/phpenv
install --HEAD josegonzalez/php/php-build

install boot2docker
install homebrew/binary/packer

install https://raw.githubusercontent.com/sorah/envchain/master/brew/envchain.rb

# Remove outdated versions from the cellar
cleanup
