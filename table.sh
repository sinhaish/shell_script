#!/bin/bash
if [ $# -eq 0 ]
then
	read -p "Enter a number: " num
	i=1
	while [ $i -le 10 ]
	do
		table=`expr $num \* $i`
		echo $table
		i=`expr $i + 1`
	done

else
	i=1
	 while [ $i -le 10 ]
        do
                table=`expr $1 \* $i`
                echo $table
                i=`expr $i + 1`
	done
fi

