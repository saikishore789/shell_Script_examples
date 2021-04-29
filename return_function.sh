#!/bin/bash

function Greet() {

str="Hello $name, what brings you to UbuntuPit.com?"
echo $str
}

echo "-> what's your name?"
read -p "enter any name " name

val=$(Greet)
echo -e "-> $val"
