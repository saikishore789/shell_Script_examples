#! /bin/bash
read -p "enter num1: " a
read -p "enter num2: " b

#echo "$a $b" | awk '{ c=$1 ; d=$2 ; print "c="c,"d="d }'
#echo "$a $b" | awk '{ c=$1 ; d=$2 ; print "sum="c+d }'
awk -v c=$a -v d=$b ' BEGIN { print "sum="c+d }'
