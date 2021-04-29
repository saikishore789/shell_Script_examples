#!/bin/bash
echo "This is a for loop"
cnt=1
for((;;))
do
  echo "this is infi loop"
  ((cnt++))
  sleep 1
  if [[ $cnt -eq 10 ]]
  then
	  break
  fi
done
