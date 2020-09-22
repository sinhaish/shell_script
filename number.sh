#!/bin/bash
if [ $1 -lt 35 ]
then
	echo "Grade E"
elif [ $1 -ge 35 ] && [  $1 -lt 50 ]
then
	echo "Grade D"
elif [ $1 -ge 50 ] && [ $1 -lt 60 ]
then
	echo "Grade C"
elif [ $1 -ge 60 ] && [ $1 -lt 70 ]
then
	echo "Grade B"
elif [ $1 -ge 70 ] && [ $1 -lt 80 ]
then
	echo "Grade A"
elif [ $1 -ge 80 ] && [ $1 -lt 90 ]
then
	echo "Grade A+"
else
	echo "Padhai kam kiya kar"
fi
