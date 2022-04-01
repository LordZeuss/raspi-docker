# Raspi-Docker

## General Info
This project is scripts that aim to to help setup docker and Mullvad VPN on a Raspberry Pi, or Debian based distros.

The goal of this project is to help users who just bought some hardware, and are looking to get started and have no knowledge of where to start.

It took my longer than it should have when I first got started, so I wrote these scripts to help others get their feet off the ground.

## Table of Contents
* [General Info](#general-info)
* [Basic Commands](#basic-commands)
* [Pre-Requirements](#pre-requirements)
* [Installation](#installation)
* [Docker Installation](#docker-installation)
* [Mullvad Installation](#mullvad-installation)
* [Conclusion](#conclusion)
* [Donations](#donations)

# Additional Containers
If you want to install some containers to get started, I have a repo for that!
The script in the repo below will let you select if you want to install Portainer, Sonarr, Radarr, Jackett and Qbittorrent into the docker-compose.yml file in the location that is setup in this script.

Heres the link to that repo:
```
https://github.com/LordZeuss/arr-installer
```

## Basic Commands
Here are some commands for those who don't know how to navigate around the terminal.
You'll need to know these commands in order to navigate the terminal and install these scripts.

```
$ ls -lists files and folders in your current directory. 
$ cd -Stands for change directory. You would type cd then the name of the directory. Ex: cd Downloads
$ cd.. -Goes to the previous directory.
$ ./ -This executes files. Ex: ./install.sh 
```
These should be enough to where you can navigate the system and follow along with this guide. I included it for those who may need the extra help navigating.

## Pre-Requirements

These scripts require you to have installed Raspbian, or any other debian based distro on your machine.

### What systems can this run on?
I have tested on the following systems, and confirmed that its functional:
* Ubuntu
* Debian
* Raspian

I have plans on testing other operating systems for functionality. Systems that it should work on, but haven't been officially tested:
* DietPi
* Linux Mint
* Pop!_OS

## Installation
To install and run the scripts, first you must install git and clone the repo.

```
$ sudo apt-get install git
$ git clone https://github.com/LordZeuss/raspi-docker
```
Then, navigate to the folder where the scripts are downloaded.

```
$ cd raspi-docker
```

## Docker Installation
To install docker, run the docker-install.sh script.

```
$ ./docker-install.sh
```

## Mullvad Installation
Mullvad is my go-to VPN to use. This script will install wireguard, and the official Mullvad setup script.
To run the script:

```
$ ./mullvad.sh
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

