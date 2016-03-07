#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#-----------------------------------------
# Install Latest Git
#-----------------------------------------
echo -e "---- Install Latest Git Into Server ----"
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update -y
sudo apt-get install git -y