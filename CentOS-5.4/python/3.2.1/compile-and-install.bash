#!/bin/bash

mkdir -p ~/python/
cd ~/python/

## 3.2.1 is the latest 3.x python, aka "python3"
wget http://www.python.org/ftp/python/3.2.1/Python-3.2.1.tar.bz2

## Unpack everything into directories
bzcat Python-3.2.1.tar.bz2 | tar -xf -

## Update permissions so ownership is correct:
chown -R root:root *

cd Python-3.2.1
./configure --prefix=/usr/local/python/3.2.1
make
make install


exit;

