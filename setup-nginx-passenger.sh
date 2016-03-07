#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#--------------------------------------
# Install Nginx with Passenger
#--------------------------------------
UBUNTU_CODE_NAME=`lsb_release -c -s` # wily - ubuntu-server-15.10
echo -e "---- Install keys and passenger repository into server ----"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
sudo touch /etc/apt/sources.list.d/passenger.list
sudo sh -c "echo 'deb https://oss-binaries.phusionpassenger.com/apt/passenger $UBUNTU_CODE_NAME main' >> /etc/apt/sources.list.d/passenger.list"
echo -e "---- Change Ownership Passenger Repository ----"
sudo chown root: /etc/apt/sources.list.d/passenger.list
sudo chmod 600 /etc/apt/sources.list.d/passenger.list
echo -e "---- Update Server Once Again ----"
sudo apt-get update -y
echo -e "---- Install Nginx-extras and Passenger ----"
sudo apt-get install nginx-extras passenger -y
echo -e "---- Check Nginx Status and Restart Server ----"
sudo service nginx status
sudo service nginx restart