#! /bin/bash
if [[ $(id -un) -eq 0 ]]
then 
     echo "this is root"
else 
     echo "this is not root"
fi
