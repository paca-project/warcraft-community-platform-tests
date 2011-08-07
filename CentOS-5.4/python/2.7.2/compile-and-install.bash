#!/bin/bash

mkdir -p ~/python/
cd ~/python/

## 2.7 is probably what most people have and the latest "pre 3.0" python.
wget http://www.python.org/ftp/python/2.7.2/Python-2.7.2.tar.bz2

## Unpack everything into directories
bzcat Python-2.7.2.tar.bz2 | tar -xf -

## Update permissions so ownership is correct:
chown -R root:root *

cd Python-2.7.2
./configure --prefix=/usr/local/python/2.7.2
make
make install


exit;

