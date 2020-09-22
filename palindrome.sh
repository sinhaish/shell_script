#!/bin/bash
a=$1
length=`expr length "$a"`
b=0
echo "The length of string is: $length"
i=`expr $length / 2`
echo "The value of i is: $i"
echo ${a:0:1}
if [ "${a:0:1}" != "${a:$length - 1:1}" ]
then
	echo "The string is not a palidrome string"
	exit 1
fi


if [ $b -le $i ] && [ "${a:$b:1}" == "${a:$length - 1:1}" ]
then
	 b=`expr $b + 1`
         length=`expr $length - 1`
	
	if [ $b -ge $i ]
		 then
                       echo "The string is palindrome string"
	       else
		       echo "Continue"
	       
	fi
else
	 echo "The string is not palindrome string"
fi

