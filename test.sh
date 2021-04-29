#! /bin/bash

for  arg in "$@"
do
  index=$(echo $arg | cut -f 1 -d "=")
  val=$(echo $arg | cut -f 2 -d "=")
  case $index in
     X) x=$val;;
     Y) y=$val;;
     *)
  esac
done
echo "$index"
((result=x+y))

echo "X+Y=$result"

