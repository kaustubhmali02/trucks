#!/bin/bash

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