#!/bin/sh

PREFIX='/usr/local/'
PWD=`pwd`
SO='/usr/libexec/apache2/libphp5.so'


build() {
  make distclean

  EXTENSION_DIR=${1}/lib/extensions/
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
  --with-config-file-path=${1}/etc/ \
  --with-pear=${1}/pear \
  --enable-pcntl \
  --enable-mbstring \
  --enable-intl \
  --with-pcre-regex \
  --with-iconv-dir=/usr/local \
  --with-gettext=$(brew --prefix gettext) \
  --enable-sockets \
  --enable-ftp \
  --with-curl \
  --with-openssl \
  --with-mysql=$(brew --prefix mysql) \
  --with-mysqli=$(brew --prefix mysql)/bin/mysql_config \
  --enable-pdo \
  --with-pdo-mysql=$(brew --prefix mysql) \
  --with-pdo-pgsql=$(brew --prefix postgresql) \
  --with-pgsql=$(brew --prefix postgresql) \
  --enable-sqlite-utf8 \
  --enable-zip \
  --with-zlib \
  --enable-xml \
  --enable-dom \
  --with-xmlrpc \
  --with-xsl \
  --with-mcrypt=shared,$(brew --prefix libmcrypt) \
  --enable-exif \
  --with-gd \
  --with-jpeg-dir=$(brew --prefix libjpeg) \
  --with-png-dir=$(brew --prefix libpng) \
  --with-freetype-dir=$(brew --prefix freetype) \
  --with-t1lib=$(brew --prefix t1lib) \
  --enable-gd-native-ttf \
  --enable-gd-jis-conv \
  --with-kerberos=/usr \
  --with-vpx-dir=$(brew --prefix libvpx) \
  --with-icu-dir=$(brew --prefix icu4c) \
  --with-libxml-dir=$(brew --prefix libxml2) \
  && make all
}


VER=`basename $PWD`
PREFIX=${PREFIX}${VER}

build ${PREFIX}

# if [ -e ${PREFIX} -a -d ${PREFIX} ]
# then
  # sudo rm -rf ${PREFIX}
# fi
# sudo mkdir -p ${PREFIX}

# if [ -e ${SO} ]
# then
  # sudo mv ${SO} '${PREFIX}/etc/.'
# fi

echo "\nPREFIX => ${PREFIX}"
echo 'TYPE: sudo make install'
