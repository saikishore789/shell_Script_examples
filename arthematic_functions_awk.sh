#!/bin/bash
mycode()
{
   read -p "Enter first number: " num1
   read -p "Enter second number: " num2
}
clear
echo "--------------------------------"
echo "Welcome to Arithmetic Calculator"
echo "--------------------------------"
echo -e "[a]ddition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
read -p "Enter your choice: " choice
case $choice in
   [aA])
        mycode
        result=$(awk -v a=$num1 -v b=$num2 'BEGIN { print a+b }')
        echo "The result for your choice is: $result"
        ;;
   [bB])
        mycode
        result=$(awk -v a=$num1 -v b=$num2 'BEGIN { print a-b }')
        echo "The result for your choice is: $result"
        ;;
   [cC])
        mycode
        result=$(awk -v a=$num1 -v b=$num2 'BEGIN { print a*b }')
        echo "The result for your choice is: $result"
        ;;
   [dD])
        mycode
        result=$(awk -v a=$num1 -v b=$num2 'BEGIN { print a/b }')
        echo "The result for your choice is: $result"
        ;;
   *)
       echo "Wrong choice"
       ;;
esac

