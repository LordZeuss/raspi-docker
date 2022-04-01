#!/bin/bash

echo "
___  ____ _  _ ____    _ _  _ ____ ___ ____ _    _    ____ ____ 
  /  |___ |  | [__     | |\ | [__   |  |__| |    |    |___ |__/ 
 /__ |___ |__| ___]    | | \| ___]  |  |  | |___ |___ |___ |  \ 
                                                                
"

#This is a script to help install docker and docker-compose files for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
update () { yes | sudo apt-get update; }
upgrade () { yes | sudo apt-get upgrade; }
######################################################################

#
#System Update
#

echo "Would you like to update the system (Recommended)? (y/n/e)"
echo " "
echo "y=yes | n=no | e=exit-installer."
echo " "

read yesorno

if [ "$yesorno" = y ]; then
	update
	upgrade
	echo " "
	echo "Update Successful."
	echo " "
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
	echo " "
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi



#
#Docker Script Install
#

echo "Would you like to install Docker (Required)? (y/n/e)"

read yesorno

if [ "$yesorno" = y ]; then
	yes | sudo apt-get install docker.io
	sudo systemctl start docker
	sudo systemctl enable docker
	echo " "
	echo "Installation Successful."
	echo " "
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
	echo " "
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi



#Docker Compose Install

echo "Would you like to install Docker Compose (Required)? (y/n/e)"

read yesorno

if [ "$yesorno" = y ]; then
	yes | sudo apt install docker-compose
	sudo groupadd docker
	sudo gpasswd -a ${USER} docker
	su - $USER
	echo " "
	echo "Installation Successful."
	echo " "
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
	echo " "
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi

echo "Installer Complete. Goodbye!"
