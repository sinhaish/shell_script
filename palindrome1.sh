#!/bin/bash
echo "$1">file1.txt
a=`rev file1.txt`
if [ $# -ne 0 ]
then
if [ $a == $1 ]
then
	echo "The string is a palindrome string"
else
	echo "The string is not a palindrome string"
fi
fi
if [ $# -eq 0 ]
then
	echo "ERROR:Please execute the script with correct argument"
fi
