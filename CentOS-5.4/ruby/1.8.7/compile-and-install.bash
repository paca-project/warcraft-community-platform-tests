#!/bin/bash

mkdir -p ~/ruby/
cd ~/ruby/

## Ruby 1.8.7
wget http://ftp.ruby-lang.org/pub/ruby/ruby-1.8.7-p352.tar.bz2

## Unpack everything into directories
bzcat ruby-1.8.7-p352.tar.bz2 | tar -xf -

## Update permissions so ownership is correct:
chown -R root:root *

cd ruby-1.8.7-p352
./configure --prefix=/usr/local/ruby/1.8.7
make
make install

exit

