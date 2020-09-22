#!/bin/bash
num=$1
if [ $# -eq 0 ]
then
	read -p "Enter the number: " num
fi
i=1
while [ $i -le 10 ]
do
	table=`expr $num \* $i`
	echo $table
	i=`expr $i + 1`
done


