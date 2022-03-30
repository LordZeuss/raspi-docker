#!/bin/bash

#This is a script to help install Mullvad VPN for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
wireguard () { yes | sudo apt-get update && sudo apt-get install curl jq openresolv wireguard; }
config () { curl -LO https://mullvad.net/media/files/mullvad-wg.sh && chmod +x ./mullvad-wg.sh && ./mullvad-wg.sh; }

######################################################################

#Install wireguard

echo "Would you like to install Wireguard (Required)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	wireguard
	echo "Installation Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
fi



#Configure Mullvad

echo "Would you like to install Mullvad (Required)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	config
	echo "Setup Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
fi

echo "Initial Wireguard and Mullvad Setup Complete. Goodbye!"

