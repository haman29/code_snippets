#!/bin/sh

# vim7.3用の./configure
# @use
#  $ wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
#  $ tar jxvf vim-7.3.tar.bz2
#  $ chmod u+x vim73configure.sh
#  $ cp vim73configure.sh /path/to/vim73
#  $ cd /path/to/vim73/
#  $ ./vim73configure.sh

./configure \
--enable-multibyte \
--with-features=huge \
--disable-selinux \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib64/python2.6/config
