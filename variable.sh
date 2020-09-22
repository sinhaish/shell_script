#!/bin/bash
a=`date`
read b
read -p "Enter the value of c:" c
read -p "Enter your name:" -s d
echo
read -p "Enter the array:" -a e
echo "Value of a= $a"
echo "Value of b= $b"
echo "Value of c= $c"
echo "Your name is: $d"
echo "Your array value is ${e[2]},${e[1]},${e[4]}"
