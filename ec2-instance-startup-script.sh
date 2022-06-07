#!/bin/bash

apt update

apt install -y ruby wget unzip openjdk-8-jdk

cd /home/ubuntu

wget https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.zip
unzip apache-maven-3.8.5-bin.zip
mv apache-maven-3.8.5 /opt

echo export PATH=/opt/apache-maven-3.8.5/bin:$PATH | tee -a /etc/profile

wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

chmod +x ./install

./install auto > /tmp/logfile
service codedeploy-agent start
service codedeploy-agent status