# raspi-docker

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Installation](#installation)
* [Docker Installation](#docker-installation)
* [Mullvad Installation](#mullvad-installation)
* [Conclusion](#conclusion)

## General info
This project is to create a script to help setup docker and Mullvad VPN on a Raspberry Pi.

## Technologies
Project is created with:
* Bash that I wrote myself. Code is probably ugly, it's my first real script.

## Pre-Requirements
These scripts require you to have installed Raspbian, or any other debian based distro on your machine.

## Setup
To run the scripts, install git and clone the repo.

```
$ sudo apt-get install git
$ git clone https://github.com/LordZeuss/raspi-docker
```

## Installation
To run the scripts, run these commands that will make the scripts executable.

```
$ chmod +x docker-install.sh
$ chmod +x mullvad.sh
$ chmod +x docker-troubleshoot-fix.sh
```

## Docker Installation
To install docker, run the docker-install.sh script.

```
$ ./docker-install.sh
```

This should install docker, and if you are having permission issues, I have found that running the troubleshoot script fixes the issue.

To run the troubleshoot script

```

$ ./docker-troubleshoot-fix.sh
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
