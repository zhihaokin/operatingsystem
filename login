#!/bin/bash
invalid=y
while [ "$invalid" = "y" ]
do
echo "        Welcome to the HR Management Login Screen!"
echo
echo -n "Email:";read email
echo -n "Password:";read password
echo
while IFS=: read -r FEmail FPassword department position
do
if [[ "$email" == "$FEmail" ]]
then
	if [[ "$password" == "$FPassword" ]]
	then 
	match="y"
	fi
fi
done < login.txt
if [ "$match" = "y" ]
then ./menu
exit
fi

echo "Invalid Username or Password!"
echo
done

