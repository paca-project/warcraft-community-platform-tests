#!/bin/bash

## Javascript command line tool:
## http://www.mozilla.org/rhino/doc.html
## http://ringojs.org/wiki/Rhino_Hacker's_Guide
mkdir ~/rhino/
cd ~/rhino
wget ftp://ftp.mozilla.org/pub/mozilla.org/js/rhino1_7R3.zip
unzip rhino1_7R3.zip

## Update permissions so ownership is correct:
chown -R root:root *
cd rhino1_7R3

## Uncomment this to run a little test that will print out
## 0.0
## 1.0
## 2.0
#java -jar ./js.jar examples/enum.js 

exit;

