#!/bin/bash

#This is a script to help install docker and docker-compose files for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
update () { yes | sudo apt-get update && sudo apt-get upgrade; }

######################################################################

#
#System Update
#

echo "Would you like to update the system (Recommended)? (y/n/e)"
echo "y is to confirm, n is to skip, e is to exit the installer."

read yesorno

if [ "$yesorno" = y ]; then
	update
	echo "Update Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
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
	echo "Installation Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
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
	echo "Installation Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi

