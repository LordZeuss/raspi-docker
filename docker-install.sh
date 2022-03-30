#!/bin/bash

#This is a script to help install Mullvad VPN for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
update () { yes | sudo apt-get update && sudo apt-get upgrade; }

######################################################################

#
#System Update
#

echo "Would you like to update the system (Recommended)? (y/n)"

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

echo "Would you like to install Docker (Required)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh get-docker.sh
	sudo usermod -aG docker $USER
	sudo usermod -aG docker Pi
	echo "Installation Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
fi
