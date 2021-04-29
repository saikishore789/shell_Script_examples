#! /bin/bash

echo_variable()
{
  read -p "enter num1: " num1
  read -p "enter num2: " num2
  local sum=$((num1+num2))
  echo $sum
}

y=$(echo_variable)
echo "value of y: $y"

