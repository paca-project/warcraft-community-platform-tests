#!/bin/bash

mkdir ~/php/
cd ~/php/
wget http://www.php.net/get/php-5.3.6.tar.bz2/from/us2.php.net/mirror
bzcat php-5.3.6.tar.bz2 | tar -xf -

## Update permissions so ownership is correct:
chown -R root:root *

## Need this to configure PHP
yum -y install libxml2-devel

cd php-5.3.6
./configure --prefix=/usr/local/php/5.3.6
make
make install


exit;

