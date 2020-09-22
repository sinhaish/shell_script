#!/bin/bash

echo -e "0. Exit\n1. Signup\n2. Login"
read -p "Choose any of the above options: " option
case $option in
	0)
		exit 1
		;;
	1)
		./signup.sh
		;;
	2)
		echo "Login page opened"
		;;
	*)
		echo "ERROR: Invalid Option"
		exit 1
		;;
esac

