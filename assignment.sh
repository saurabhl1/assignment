#!/bin/bash

# In-order to run the script, please pass multiple hostname(seperated by comma) as parameter to the script.

echo "Script Begins"
server=`echo $1 | sed 's/,/ /g'` 	#The comma seperated hostname will be seperated by a space
echo "Hostname are: $server"
if [ -n "$server" ]					#Checks whether there is any hostname given as paramenter or not
then
	for line in $server
	do
		echo "sshpass -p "root123" ssh root@$line"
		gnome-terminal -e "sshpass -p "root123" ssh root@$line"
		
	done
else								#If no parameter is given while running the script then it prints below statement
	echo "Please give appropriate hostname as parameter to the script"
fi
