#! /bin/bash

dir=/var/log

cd $dir

cat /dev/null > messages
cat /dev/null > wtmp
echo "logs are cleaned up"
