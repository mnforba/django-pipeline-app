#!/bin/bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update && sudo apt upgrade -y
# We are adding the zip package so we have access to the zip command
# We are adding python python3-pip python3.8-venv so that we have 
# python, pip and venv installed and ready to go
sudo apt install default-jre zip python python3-pip python3.8-venv -y
sudo apt install jenkins -y
sudo systemctl start jenkins

# STEP 5 - Script to automate the installation of Jenkins on the EC2 instance.