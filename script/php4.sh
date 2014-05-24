#!/bin/sh

PREFIX='/usr/local/'
PWD=`pwd`
SO='/usr/libexec/apache2/libphp4.so'

build() {
  make distclean

  EXTENSION_DIR=${1}lib/extensions/
  export EXTENSION_DIR

  CFLAGS='-arch x86_64 -g -Os -pipe -no-cpp-precomp'
  CCFLAGS='-arch x86_64 -g -Os -pipe'
  CXXFLAGS='-arch x86_64 -g -Os -pipe'
  LDFLAGS='-arch x86_64 -bind_at_load'
  export CFLAGS CXXFLAGS LDFLAGS CCFLAGS

  EXTRA_LIBS='-lresolv'
  export EXTRA_LIBS

  ./configure \
  --prefix=${1} \
  --with-apxs2=/usr/sbin/apxs \
  --with-config-file-path=${1}/etc \
  --with-pear=${1}/pear \
  --enable-cli \
  --enable-force-cgi-redirect \
  --enable-mbstring \
  --enable-mbregex \
  --enable-zend-multibyte \
  --with-iconv-dir=/usr/local \
  --with-gettext=/Users/oppara/usr \
  --enable-memory-limit \
  --enable-sockets \
  --enable-ftp \
  --with-curl \
  --enable-exif \
  --with-gd \
  --with-jpeg-dir=$(brew --prefix libjpeg) \
  --with-png-dir=$(brew --prefix libpng) \
  --with-freetype-dir=~/usr \
  --with-t1lib=~/usr \
  --with-ttf \
  --enable-gd-native-ttf \
  --enable-gd-jis-conv \
  --with-mysql=$(brew --prefix mysql) \
  --with-pgsql=$(brew --prefix postgresql) \
  --enable-xml \
  --with-xsl \
  --with-dom \
  --with-xmlrpc \
  --with-mcrypt \
  --enable-zip \
  --with-zlib \
  --with-bz2 \
  --with-zlib-dir=/usr \
  && make all
}


VER=`basename $PWD`
PREFIX=${PREFIX}${VER}

build ${PREFIX}

echo "\nPREFIX => ${PREFIX}"
echo 'TYPE: sudo make install'
