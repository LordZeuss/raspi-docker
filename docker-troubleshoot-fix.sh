#!/bin/bash

#troubleshooting docker fix script

newgrp docker

sudo chown root:docker /var/run/docker.sock