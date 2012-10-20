#!/bin/sh

# require OSSP uuid
# http://www.ossp.org/pkg/lib/uuid/

PREFIX='/usr/local/'
PWD=`pwd`

build() {
make distclean

  CFLAGS='-I/usr/local/include'
  LDFLAGS='-L/usr/local/lib'
  LIBS='-luuid'
  ARCHFLAGS='-arch x86_64'
  export ARCHFLAGS CFLAGS LIBS LDFLAGS

  EXTRA_LIBS='-lresolv'
  export EXTRA_LIBS

./configure \
  --prefix=${1} \
  --enable-thread-safety \
  --with-bonjour \
  --with-gssapi \
  --with-krb5 \
  --with-openssl  \
  --with-libxml \
  --with-libxslt \
  --with-ossp-uuid \
   && make

}

complete() {
    echo "\nPREFIX => ${PREFIX}"
    echo 'TYPE: sudo make install'
}

VER=`basename $PWD`
PREFIX=${PREFIX}${VER}

build ${PREFIX} && complete


# /path/to/bin/postgres -D /path/to/data
    # or
# /path/to/bin/pg_ctl -D /path/to/data -l logfile start
