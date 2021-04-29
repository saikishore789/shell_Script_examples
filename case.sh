#! /bin/bash
read -p "enter num1: " a
read -p "enter numb2: " b
read -p "enter option 1.add 2.sub 3.mul: " opt

case $opt in
        1)
           echo "this is for addition"
           echo "add $a and $b: $((a+b))"
           ;;
        2)
           echo "this is for subtraction"
           echo "subtract $a and $b: $((a-b))"
           ;;
        3)
           echo "this is for multiplication"
           echo "multiply $a and $b: $((a*b))"
           ;;
        *)
           echo "entered invalid number" 
           ;;
esac
