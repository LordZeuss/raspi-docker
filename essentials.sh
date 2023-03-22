#!/bin/bash

clear

echo "
___  ____ _  _ ____    _ _  _ ____ ___ ____ _    _    ____ ____ 
  /  |___ |  | [__     | |\ | [__   |  |__| |    |    |___ |__/ 
 /__ |___ |__| ___]    | | \| ___]  |  |  | |___ |___ |___ |  \ 
                                                                
"


#This is a script to install essential and or useful programs for Docker.

#A list is provided below, as well as on the Github Page with the included programs.

#This script is designed to add the containers after installing Docker from this repo. If your docker-compose.yml file is located elsewhere, you will need to change the location in the script so the containers are added.

## Included Containers:
#	Portainer	-Container manager for docker (ESSENTIAL)
#	Pi-Hole 	-DNS sinkhole; ad and telemetry adblocker

###########################################################################################

#Install Portainer

echo "Would you like to install Portainer (HIGHLY RECOMMENDED)? (y/n/e)"

read -n1 yesorno

if [ "$yesorno" = y ]; then
	echo "portainer:
  container_name: portainer
  restart: unless-stopped
  ports:
   - 9000:9000
  volumes:
   - /var/run/docker.sock:/var/run/docker.sock
   - /home/dockeras/portainer:/data
  environment:
   - PUID=1000
   - PGID=150
   - TZ=US/Eastern
  image: portainer/portainer-ce" >> /home/$USER/raspi-docker/docker-compose.yml		#replace /home/$USER/raspi-docker/docker-compose.yml with the location of your docker-compose.yml file
echo " " >>/home/$USER/raspi-docker/docker-compose.yml #replace this location with the location docker-compose.yml if needed.
echo " "
echo "Successfully Added"
elif [ "$yesorno" = n ]; then
	echo " "
	echo "Skipping..."
elif [ "$yesorno" = e ]; then
	echo " "
	echo "Goodbye!"
	exit 1
else
	echo " "
	echo "Not a valid answer. Exiting..."
	exit 1
fi

#############################################################

echo "Would you like to install Yacht (Alternative to Portainer)? (y/n/e)"

read -n1 yesorno

if [ "$yesorno" = y ]; then
  mkdir /home/$USER/raspi-docker &> /dev/null
  mkdir /home/$USER/raspi-docker/yacht
	echo "---
version: "3"
services:
  yacht:
    container_name: yacht
    restart: unless-stopped
    ports:
      - 8000:8000
    volumes:
      - /home/$USER/raspi-docker/yacht:/config
      - /var/run/docker.sock:/var/run/docker.sock
    image: selfhostedpro/yacht" >> /home/$USER/raspi-docker/docker-compose.yml		#replace /home/$USER/raspi-docker/docker-compose.yml with the location of your docker-compose.yml file
echo " " >>/home/$USER/raspi-docker/docker-compose.yml #replace this location with the location docker-compose.yml if needed.
echo " "
echo "Successfully Added"
elif [ "$yesorno" = n ]; then
	echo " "
	echo "Skipping..."
elif [ "$yesorno" = e ]; then
	echo " "
	echo "Goodbye!"
	exit 1
else
	echo " "
	echo "Not a valid answer. Exiting..."
	exit 1
fi



echo " "
echo " "
echo "Script Complete. Goodbye!"


