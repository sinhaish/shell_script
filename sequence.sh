#!/bin/bash
for i in `seq 1 1 10`
do
	count=`expr $i \* $1`
	echo $count
done


