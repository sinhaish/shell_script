
#!/bin/bash
i=1
read -p "Enter the username without space: " user
read -p "Enter the password: " -s pass
if [ -f $user.acc ]
then
		md5=`echo $pass | md5sum | cut -f 1 -d " "`
		a=`cat $user.acc`
		echo "The value of a is $a"
		echo "The value of md5 is $md5"
		if [ "$md5" == "$a" ]
		then
			echo "Login successful"
			cat "$user.profile"
			exit
		fi
		i=`expr $i + 1`
		if [$i -gt 3 ]
		then
			exit
		fi
		while [ $i -le 3 ]
			do
				read -p "Username or password is incorrect,do you want to try again (Y/N): " yeno
				if [ "$yeno" == "Y" ] || [ "$yeno" == "y" ]
				then
					tail +3 login1.sh | head -35>run.sh
					bash run.sh
				elif [ "$yeno" == "N" ] || [ "$yeno" == "n" ]
				then
					exit
				else
					echo "Aap budhu hain!"
					exit
				fi
			done
		else

			echo
			echo "User doesn't exist please signup first!"
			exit

		fi

			

