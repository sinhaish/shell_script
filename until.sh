#!/bin/bash
count=0
read -p "Enter a number:" num
until [ $count -eq $num ]
do
count=`expr $count + 1`
echo $count
done
echo "Thank You"
