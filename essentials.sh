#!/bin/bash

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

echo "Would you like to install Portainer (Required if not already insalled)? (y/n/e)"

read yesorno

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
  image: portainer/portainer" >> /home/$USER/raspi-docker/docker-compose.yml		#replace /home/$USER/raspi-docker/docker-compose.yml with the location of your docker-compose.yml file
echo " " >>/home/$USER/raspi-docker/docker-compose.yml #replace this location with the location docker-compose.yml if needed.
echo "Successfully Added"
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
elif [ "$yesorno" = e ]; then
	echo "Goodbye!"
	exit 1
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi



#Pi-hole DNS ad & telemetry blocking

echo "Would you like to install pi-hole (DNS ad and telemetry blocker)? (y/n/e)"

read yesorno

if [ "$yesorno" = y ]; then
	echo "pihole:
    container_name: pihole
    image: pihole/pihole:latest
    # network_mode: host
    ports:
      - "53:53/tcp"
      - "53:53/udp"
      - "67:67/udp"
      - "8089:80/tcp"
      #- "443:443/tcp"
    env_file:
      - ./services/pihole/pihole.env
    volumes:
       - ./volumes/pihole/etc-pihole/:/etc/pihole/
       - ./volumes/pihole/etc-dnsmasq.d/:/etc/dnsmasq.d/
    dns:
      - 127.0.0.1
      - 1.1.1.1
    # Recommended but not required (DHCP needs NET_ADMIN)
    #   https://github.com/pi-hole/docker-pi-hole#note-on-capabilities
    cap_add:
      - NET_ADMIN
      - CAP_NET_BIND_SERVICE
      - CAP_NET_ADMIN
      - CAP_NET_RAW
      - CAP_CHOWN
    restart: unless-stopped" >> /home/$USER/raspi-docker/docker-compose.yml 		#replace /home/$USER/raspi-docker/docker-compose.yml with the location of your docker-compose.yml file
echo " " >>/home/$USER/raspi-docker/docker-compose.yml #replace this location with the location docker-compose.yml if needed.
echo "Successfully Added"
elif [ "$yesorno" = n ]; then
	echo "Skipping..."
elif [ "$yesorno" = e ]; then
	echo "Goodbye!"
	exit 1
else
	echo "Not a valid answer. Exiting..."
	exit 1
fi


echo "Script Complete. Goodbye!"


