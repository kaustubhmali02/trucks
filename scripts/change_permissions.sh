#!/bin/bash

# Give ubuntu user permission to run docker without sudo privilages

groupadd docker

usermod -aG docker $USER