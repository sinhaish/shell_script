while [ $i -lt 3 ]
do
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
		if [ $i -lt 3 ]
		then
			read -p "Username or password is incorrect,do you want to try again (Y/N): " yeno
 	                if [ "$yeno" == "Y" ] || [ "$yeno" == "y" ]
        	        then
                	        tail +3 login.sh | head -36 >run.sh
				bash run.sh
                	elif [ $yeno == "N" ] || [ $yeno == "n" ]
                	then
                        	exit
			else
                        	echo "Aap andhe hain!"
                        	exit
			fi
		fi
	else
                echo
                echo "User doesn't exist please signup first!"
                exit
