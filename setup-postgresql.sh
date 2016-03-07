#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#--------------------------------------
# Install Postgresql
#--------------------------------------
echo -e "---- Install Postgresql ----"
UBUNTU_CODE_NAME=`lsb_release -c -s` # wily - ubuntu-server-15.10
POSTGRESQL='9.4'
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ $UBUNTU_CODE_NAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get install postgresql-common postgresql-$POSTGRESQL libpq-dev -y