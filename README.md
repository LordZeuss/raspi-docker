# Raspi-Docker

## General Info
This project is scripts that aim to to help setup docker and/or Mullvad VPN on a Raspberry Pi, or Debian based distros.

The goal of this project is to help users who just bought some hardware, and are looking to get started and have no knowledge of where to start, or simply to automate the process if you set it up frequently.

I have added a text file with information about the scripts, such as how to edit the scripts, as well as general help, with beginner level Linux commands.

### **UPDATE 2/7/23: The script has been tested and verfied for functionality. Still fully functional. :)**

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
The script(s) in the repo below will let you select if you want to install things like Portainer, Sonarr, Radarr, Jackett, qBittorrent and Plex or many more options into the docker-compose.yml file through the location that is created and setup by the scripts in this repo.
I have added a LOT more useful and popular containers. If you're interested I listed the link below.

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
You can also autofill the name of a file/folder/directory with the tab key when typing in the name/location of that file/folder/directory. (I use it in the demonstration video)
```
These should be enough to where you can navigate the system and follow along with this guide. I included it for those who may need the extra help navigating around or are unfamiliar with Linux commands.

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
sudo apt-get install git -y
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
Mullvad is my go-to VPN to use. This script will install wireguard, and (or) the official Mullvad setup script.

You can skip the mullvad script by selecting "n" when prompted if you use another VPN provider.

To run the script:

```
./mullvad.sh
```
Hint: when copy-pasting your Mullvad account remeber to remove spaces. 

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
If you would like to see your external IP, try running this command with the VPN both on and off, to verify you are connected:
```
curl https://ipinfo.io/ip ; echo
wget -qO- https://ipecho.net/plain ; echo
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

If you notice something is wrong or could be done better, please submit an issue or a pull request! I want this to be efficient and useful. From code to instructions in the README. Thank you to those who have contributed to the project! I appreciate it!

This is my first attempt at writing scripts and working with code, so for you coder's, the code might not be the prettiest but if it works it works!

I wrote these scripts because I couldn't find anything simple when I first started. 

I hope these scripts help you get started!

Don't forget to check out my other project with provides a script to install containers for docker!

```
https://github.com/LordZeuss/arr-installer
```

# Donations
Feel free to use these scripts as much as you want, edit it as much as you need to, fork them into your own projects, have fun with it! That's the purpose for open source! I just please ask that if you use my code in your own projects, that you credit me.

You ABSOLUTELY do NOT need to donate. I'm just a university student trying to learn how to code and make programs. If you decide to donate and support me and this project, thank you! I appreciate your support!

If you are feeling kind enough to donate to me here is my bitcoin address. 

```
bc1q4srmsq9mhkswerxw7vz68fpnvzs34wrutx9fdm
```

