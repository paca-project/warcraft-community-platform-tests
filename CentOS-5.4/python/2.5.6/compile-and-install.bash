#!/bin/bash

mkdir -p ~/python/
cd ~/python/

## Python has several versions.
## 2.5.x is what Google App Engine (GAE) uses
wget http://www.python.org/ftp/python/2.5.6/Python-2.5.6.tar.bz2

## Unpack everything into directories
bzcat Python-2.5.6.tar.bz2 | tar -xf -

## Update permissions so ownership is correct:
chown -R root:root *

cd Python-2.5.6
./configure --prefix=/usr/local/python/2.5.6
make
make install


exit;

