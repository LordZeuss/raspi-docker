# Raspi-Docker

## General Info
This project is scripts that aim to to help setup docker and Mullvad VPN on a Raspberry Pi, or Debian based distros.

The goal of this project is to help users who just bought some hardware, and are looking to get started and have no knowledge of where to start.

I'm constantly working on updating, and improving the code, as well as making the script easier to use, and currently experimenting with adding customization features.

If you would like to use a GUI (Graphical User Interface) instead of yes/no questions in terminal, I have created a GUI version of the scripts.

Github link to that page:

https://github.com/LordZeuss/docker-gui

Below is a video of how simple and quick the install process is:



https://user-images.githubusercontent.com/87180353/161514419-3f063011-3d31-4882-87e6-61b737e82d3d.mp4




We used Ubuntu for the demo, however more platforms are available to use and are listed below.

## Table of Contents
* [General Info](#general-info)
* [Basic Commands](#basic-commands)
* [Pre-Requirements](#pre-requirements)
* [Installation](#installation)
* [Docker Installation](#docker-installation)
* [Mullvad Installation](#mullvad-installation)
* [Essential Containers](#essential-containers)
* [Conclusion](#conclusion)
* [Donations](#donations)

# Additional Containers
If you want to install some containers to get started, I have a repo for that!
The script in the repo below will let you select if you want to install Portainer, Sonarr, Radarr, Jackett and Qbittorrent into the docker-compose.yml file in the location that is setup in this script.

Heres the link to that repo:

https://github.com/LordZeuss/arr-installer


## Basic Commands
Here are some commands for those who don't know how to navigate around the terminal.
You'll need to know these commands in order to navigate the terminal and install these scripts.

```
ls -lists files and folders in your current directory. 
cd -Stands for change directory. You would type cd then the name of the directory. Ex: cd Downloads
cd.. -Goes to the previous directory.
./ -This executes files. Ex: ./install.sh 
```
These should be enough to where you can navigate the system and follow along with this guide. I included it for those who may need the extra help navigating.

## Pre-Requirements

These scripts require you to have installed Raspbian, or any other debian based distro on your machine.

### What systems can this run on?
I have tested on the following systems, and confirmed that its functional:
* Ubuntu
* Debian
* Raspian
* Linux Mint
* Pop!_OS

I have plans on testing other operating systems for functionality. The scripts should work on Debian based distros just fine, but haven't been officially tested:
* DietPi
* Synology DSM

NOTE: If you try this on Synology, you will need to edit the scripts paths, because it will need to be on the volume of the drive you want to install docker on, which isn't an issue for normal Debian systems.

If you have used this script on a OS that isn't listed above, please create an "issue" and list the name of the OS so I can add it to the list!

## Installation
To install and run the scripts, first you must install git and clone the repo.

```
sudo apt-get install git
git clone https://github.com/LordZeuss/raspi-docker
```
Then, navigate to the folder where the scripts are downloaded.

```
cd raspi-docker
```

## Docker Installation
To install docker, run the docker-install.sh script.

```
./docker-install.sh
```

## Mullvad Installation
Mullvad is my go-to VPN to use. This script will install wireguard, and the official Mullvad setup script.
To run the script:

```
./mullvad.sh
```

### Turning the VPN On and Off
Once you've added your Mullvad account, it will automatically grab the configuration files for the servers, so you can connect.

To turn on Mullvad VPN using wireguard, you will need to find a server you want to connect to, then run the following commands.

List of servers:
```
https://mullvad.net/en/servers/
```
To connect to a server:
```
wg-quick up mullvad-(SERVER)
```
Example of connecting to a Mullvad server in Zurich, Switzerland
```
wg-quick up mullvad-ch10
```
To turn off the VPN and disconnect from the Mullvad server, just replace up, with down.
```
wg-quick down mullvad-(SERVER)
```
Example on the same Switzerland server
```
wg-quick down mullvad-ch10
```

## Essential Containers
I have included useful, or "essential" containers to help you get started. Run the essentials.sh script to add what you want.

### Included Containers
* Portainer   -Container manager for docker (ESSENTIAL)
* Pi-hole     -DNS sinkhole; ad & telemetry blocker

To run the script:
```
./essentials.sh
```

## Conclusion
These scripts are designed to setup docker on a Raspberry Pi (Although it also works on Debian based systems that I've tested) and to setup Mullvad VPN.

This is my first attempt at writing scripts and working with code, so there's probably a lot more I could do to improve it, but it works as far as I've tested.

I wrote these scripts because I couldn't find anything simple when I first started. 

I hope these scripts help you get started!

Don't forget to check out my other project with provides a script to install containers for docker!

```
https://github.com/LordZeuss/arr-installer
```

# Donations
Feel free to use these scripts as much as you want, edit it as much as you need to, fork them into your own projects, have fun with it! That's the purpose for open source!

You ABSOLUTELY do NOT need to donate. I'm just a university student trying to learn how to code and make programs. If you decide to donate and support me and this project, thank you! I appreciate your support!

If you are feeling kind enough to donate to me here is my bitcoin address. 

```
bc1q4srmsq9mhkswerxw7vz68fpnvzs34wrutx9fdm
```

