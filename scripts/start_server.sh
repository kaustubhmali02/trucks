#!/bin/bash

# Pulling latest image from docker hub
docker pull kaustubhmali/hello-world-build:latest

# Running latest image
docker run -itd --name hello-world-build -p 8080:8080 kaustubhmali/hello-world-build