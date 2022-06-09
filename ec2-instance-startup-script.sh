#!/bin/bash

apt update

apt install -y ruby wget unzip ca-certificates curl gnupg lsb-release

# mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# apt-get update
# apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

cd /home/ubuntu

# wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
# unzip apache-maven-3.8.5-bin.zip
# mv apache-maven-3.8.5 /opt

# echo export PATH=/opt/apache-maven-3.8.5/bin:$PATH | tee -a /etc/profile

wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

chmod +x ./install

./install auto > /tmp/logfile
service codedeploy-agent start
service codedeploy-agent status