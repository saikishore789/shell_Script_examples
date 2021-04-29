#! /bin/bash

#for each in blockofcode.sh actionOnService.sh
for s in $(ls)
do 
  if [[ -x $s ]]
  then
    echo "$s has executable permissions"
  else 
    echo "$s doesn't has executable permissions" 
  fi
done
