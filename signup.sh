#!/bin/bash
read -p "Enter username without space: " user
if [ -f "$user.acc" ]
then
	echo "User already exists"
	exit
else
	read -p "Enter the password: " -s pass
	echo
	echo $pass | md5sum | cut -f 1 -d " " >"$user.acc"
	read -p "Enter name of user: " name
	read -p "Enter age of user: " age
	read -p "Enter gender of user: " gender
	echo "The name of the user is:$name">"$user.profile"
	echo "The age of the user is:$age">>"$user.profile"
	echo "The gender of the user is:$gender">>"$user.profile"
	echo "User account created"
fi
