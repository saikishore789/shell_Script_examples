#!/bin/bash

if [[ $# -eq 0 ]]
then
  echo "Usage: $0 pkg1 pkg2 ...."
  exit 1
fi

if [[ $(id -u) -ne 0 ]] 
then 
   echo "Please run from root user or with sudo privilage"
   exit 2
fi

for each_pkg in $@
do
  if which $each_pkg &> /dev/null
  then 
     echo "${each_pkg} already installed"
  else
     echo "${each_pkg} installing..."
     yum install ${each_pkg} -y &> /dev/null 
     if [[ $? -eq 0 ]]
     then
       echo "Successfully installed $each_pkg pkg"
     else
       echo "Unable to install  $each_pkg"
     fi
  fi
done
