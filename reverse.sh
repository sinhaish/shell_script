#!/bin/bash
echo $1>file1.txt
a=`rev file1.txt`
echo "The reverse value of the number provided is:$a"
if [ $# -eq 0 ]
then
	echo "ERROR:Execute the Script Correctly"
fi
