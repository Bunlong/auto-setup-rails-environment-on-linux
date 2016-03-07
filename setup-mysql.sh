#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#--------------------------------------
# Install MySQL
#--------------------------------------
echo -e "---- Install MySQL APT Configuration Repository ----"
wget http://dev.mysql.com/get/mysql-apt-config_0.6.0-1_all.deb
sudo dpkg -i mysql-apt-config_0.6.0-1_all.deb
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y
echo -e "---- Check MySQL Installation Status ----"
sudo service mysql restart
sudo service mysql status
echo -e "---- Remove Package ----"
sudo rm mysql-apt-config_0.6.0-1_all.deb