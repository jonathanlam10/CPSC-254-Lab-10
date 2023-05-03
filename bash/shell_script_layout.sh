#!/bin/bash

#Create the menu Screen
echo "0 Exit"
echo "1 Project Introduction"
echo "2 File Integrity Check Helper"
echo "3 Dependency Check Helper"
echo "4 Credits"

#get user input
echo "Your Choice:"
read user_choice

#loop until the user decides to exit 
while [ $user_choice != "0" ]
do
	if [ $user_choice == "0" ]
	then
		exit 1
	elif [ $user_choice == "1" ]
	then 
		echo "This is a small homework assignment on bash files."
	elif [ $user_choice == "2" ]
	then
		./check_local_files.sh
	elif [ $user_choice == "3" ]
	then
		./run.sh
	elif [ $user_choice == "4" ]
	then
		echo "Created by: Carlos Almontes, Saul Andrade , and Jonathan Lam"
	fi
	echo -e "\n0 Exit"
	echo "1 Project Introduction"
	echo "2 File Integrity Check Helper"
	echo "3 Dependency Check Helper"
	echo "4 Credits"
	echo "Your Choice:"
	read user_choice
done