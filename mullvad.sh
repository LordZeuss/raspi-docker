#!/bin/bash

echo "
___  ____ _  _ ____    _ _  _ ____ ___ ____ _    _    ____ ____ 
  /  |___ |  | [__     | |\ | [__   |  |__| |    |    |___ |__/ 
 /__ |___ |__| ___]    | | \| ___]  |  |  | |___ |___ |___ |  \ 
                                                                
"

#This is a script to help install Mullvad VPN for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
update () { yes | sudo apt-get update; }
wireguard () { yes | sudo apt-get install curl jq openresolv wireguard; }
config () { yes | curl -LO https://mullvad.net/media/files/mullvad-wg.sh && chmod +x ./mullvad-wg.sh && ./mullvad-wg.sh; }
openresolv () { yes | sudo apt install openresolv; }


######################################################################

#Install wireguard

echo "Would you like to install Wireguard (Required)? (y/n/e)"
echo " "
echo "y=yes | n=no | e=exit-installer"

read yesorno

if [ "$yesorno" = y ]; then
	update
	openresolv
	wireguard
	echo " "
	echo "Installation Successful."
	echo " "
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
	echo " "
elif [ "$yesorno" = e ]; then
	echo "Goodbye!"
	exit 1
else
	echo "Not a valid answer. Exiting..."
fi



#Configure Mullvad

echo "Would you like to install Mullvad (Required)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	yes | sudo apt-get install jq
	config
	echo " "
	echo "Setup Successful."
	echo " "
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
	echo " "
elif [ "$yesorno" = e ]; then
	echo "Goodbye!"
	exit 1
else
	echo "Not a valid answer. Exiting..."
fi

echo "Initial Wireguard and Mullvad Setup Complete. Goodbye!"

