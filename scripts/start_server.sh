#!/bin/bash

# Checking if there are any running containers with same name

if [ "$(docker ps -aq -f name=hello-world-deploy)" ];then
    echo "Running Countainers. Removing them"
    docker rm -f $(docker ps -aq -f name=hello-world-deploy)
    if [ "$(docker ps -aq -f status=exited -f name=hello-world-deploy)" ]; then
        # cleanup
        docker rm -f $(docker ps -aq -f status=exited -f name=hello-world-deploy)
    fi
else
    echo "Din't find any Running Containers"
fi

# Pulling latest image from docker hub
docker pull kaustubhmali/hello-world-build:latest

# Running latest image
docker run -itd --name hello-world-deploy -p 8080:8080 kaustubhmali/hello-world-build