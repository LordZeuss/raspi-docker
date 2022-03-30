#!/bin/bash 

echo "

 _______  _______           _______   _________ _        _______ _________ _______  _        _        _______  _______ 
/ ___   )(  ____ \|\     /|(  ____ \  \__   __/( (    /|(  ____ \\__   __/(  ___  )( \      ( \      (  ____ \(  ____ )
\/   )  || (    \/| )   ( || (    \/     ) (   |  \  ( || (    \/   ) (   | (   ) || (      | (      | (    \/| (    )|
    /   )| (__    | |   | || (_____      | |   |   \ | || (_____    | |   | (___) || |      | |      | (__    | (____)|
   /   / |  __)   | |   | |(_____  )     | |   | (\ \) |(_____  )   | |   |  ___  || |      | |      |  __)   |     __)
  /   /  | (      | |   | |      ) |     | |   | | \   |      ) |   | |   | (   ) || |      | |      | (      | (\ (   
 /   (_/\| (____/\| (___) |/\____) |  ___) (___| )  \  |/\____) |   | |   | )   ( || (____/\| (____/\| (____/\| ) \ \__
(_______/(_______/(_______)\_______)  \_______/|/    )_)\_______)   )_(   |/     \|(_______/(_______/(_______/|/   \__/
                                                                                                                       

"

#This is a script to help install docker for the Raspberry pi

######################################################################

#Functions List

noanswer () { echo "Skipping..." ; }
updatesys () { yes | sudo apt-get update && upgrade; }

######################################################################


#Update System

echo "Would you like to update your system (Recommended)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	updatesys
	echo "Update Successful."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
fi

#Install LDS

echo "Continue Installation of Docker (Required)? (y/n)"

read yesorno

if [ "$yesorno" = y ]; then
	git clone https://github.com/GreenFrogSB/LMDS.git ~/LMDS
	cd ~/LMDS
	echo "Installed Successfully."
	echo "Run ./deploy.sh to get started with installing programs into docker."
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
else
	echo "Not a valid answer. Exiting..."
fi


echo "Installer Completed. Goodbye!"

