#! /bin/bash

read -p "enter filename " filename

if [[ -f  "$filename" ]]
then
   echo " removing $filename "
   rm -rf $filename
else
   echo "$filename is not exist" 
fi
