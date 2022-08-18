#!/bin/bash
cd /opt
sudo yum install wget curl zip unzip -y 
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y 
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins