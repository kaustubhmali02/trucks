#!/bin/bash

# Stop all running containers

docker stop $(docker ps -q)

# Prune containers

docker container prune