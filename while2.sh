#!/bin/bash
while read line
do
	echo $line | shasum | cut -f 1 -d " "
done<userlist.txt
