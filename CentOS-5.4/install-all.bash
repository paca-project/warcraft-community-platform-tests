#!/bin/bash

## Terminate if there are errors
set -e

LOG_FILE="/tmp/warcraft-community-platform-tests-installs.txt"
LOG_VERSIONS="/tmp/warcraft-community-platform-tests-language-versions.txt"

## Update everything
yum -y update >>${LOG_FILE} 2>&1

## Make all the scripts executable
chmod u+x ./*/*/*.bash                     >>${LOG_FILE} 2>&1


echo -n "Starting install of Java: "; echo `date`
./java/1.6.0/openjdk-binary-install.bash >>${LOG_FILE} 2>&1
which java    >> ${LOG_VERSIONS}
java -version >> ${LOG_VERSIONS} 2>&1

echo -n "Starting install of JavaScript/Rhino: "; echo `date`
./rhino/1_7R3/binary-install.bash        >>${LOG_FILE} 2>&1
pushd ~/rhino/rhino1_7R3 >> /dev/null
echo "cd `pwd`"                               >> ${LOG_VERSIONS}
echo "java -jar ./js.jar examples/enum.js" >> ${LOG_VERSIONS}
popd >> /dev/null

echo -n "Starting install of PHP 5.3.6: "; echo `date`
./php/5.3.6/compile-and-install.bash     >>${LOG_FILE} 2>&1
export PATH=/usr/local/php/5.3.6/bin:$PATH
which php    >> ${LOG_VERSIONS}
php -version >> ${LOG_VERSIONS}

echo -n "Starting install of Ruby 1.8.6: "; echo `date`
./ruby/1.8.6/compile-and-install.bash    >>${LOG_FILE} 2>&1
export PATH=/usr/local/ruby/1.8.6/bin:$PATH
which ruby >> ${LOG_VERSIONS}
ruby -v    >> ${LOG_VERSIONS}

echo -n "Starting install of Ruby 1.8.7: "; echo `date`
./ruby/1.8.7/compile-and-install.bash    >>${LOG_FILE} 2>&1
export PATH=/usr/local/ruby/1.8.7/bin:$PATH
which ruby >> ${LOG_VERSIONS}
ruby -v    >> ${LOG_VERSIONS}

echo -n "Starting install of Ruby 1.9.2: "; echo `date`
./ruby/1.9.2/compile-and-install.bash    >>${LOG_FILE} 2>&1
export PATH=/usr/local/ruby/1.9.2/bin:$PATH
which ruby >> ${LOG_VERSIONS}
ruby -v    >> ${LOG_VERSIONS}

echo -n "Starting install of Python 2.5.6: "; echo `date`
./python/2.5.6/compile-and-install.bash  >>${LOG_FILE} 2>&1
export PATH=/usr/local/python/2.5.6/bin:$PATH
which python >> ${LOG_VERSIONS}
python -V    >> ${LOG_VERSIONS} 2>&1

echo -n "Starting install of Python 2.7.2: "; echo `date`
./python/2.7.2/compile-and-install.bash  >>${LOG_FILE} 2>&1
export PATH=/usr/local/python/2.7.2/bin:$PATH
which python >> ${LOG_VERSIONS}
python -V    >> ${LOG_VERSIONS} 2>&1

echo -n "Starting install of Python 3.2.1: "; echo `date`
./python/3.2.1/compile-and-install.bash  >>${LOG_FILE} 2>&1
export PATH=/usr/local/python/3.2.1/bin:$PATH
which python3 >> ${LOG_VERSIONS}
python3 -V    >> ${LOG_VERSIONS} 2>&1

exit;

