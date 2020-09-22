#!/bin/bash
count=1
while [ $count -le 3 ]
do	

	read -p "Enter the username:" user
	read -p "Enter password:" -s pass
	echo
	if [ ! -f $user.acc ]
	then
		echo "User not registered. Please signup first"
		exit 1
	fi
	md5=`echo $pass | md5sum | cut -f 1 -d " "`
	c=`cat $user.acc`
	if [ $md5 == $c ]
	then
		echo "Login successful"
		cat $user.profile
		exit 0
	else
		echo "Username or password incorrect"
		if [ $count -eq 3 ]
		then
			echo "You have exceeded 3 login attempts"
			exit 3
		fi
		read -p "Do you want to try again? Y/N" res
		if [ "$res" == "Y" -o "$res" == "y" ]
		then
			count=`expr $count + 1`
		elif [ "$res" == "N" -o "$res" == "n" ]
		then
			exit 0
		else
			echo "Aap andhe hai!!"
			exit 2
		fi
	fi

done	

