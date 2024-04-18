#!/bin/bash
set -e

sudo chmod +x scripts/stop_container.sh

# stop the running container(if any)
containerid = `sudo docker ps | awk -F " " '{print $1}'`
sudo docker rm -f $containerid
