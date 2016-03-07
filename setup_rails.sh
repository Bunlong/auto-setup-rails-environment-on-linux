#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#--------------------------------------
# Install Neccessary Dependencies Packages
#--------------------------------------
echo -e "---- Install Neccessary Dependencies Packages Into Server ----"
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y

#-----------------------------------------
# Install RVM with Ruby v2.3.0 & Rails v4.2.5
#-----------------------------------------
RUBY_VERSION="2.3.0"
echo -e "---- Install RVM with Ruby v2.3.0 & Rails v4.2.5 Into Server ----"
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 -y
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo -e "---- Install Ruby Packages $RUBY_VERSION ----"
rvm install $RUBY_VERSION
source ~/.rvm/scripts/rvm
echo -e "---- Set Ruby $RUBY_VERSION as Default ----"
rvm use $RUBY_VERSION --default
echo -e "---- Disable Download RDoc of Rails Package ----"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

RAILS_VERSION="4.2.5"
echo -e "---- Show Gem List ----"
gem list
echo -e "---- Install Rails Framework $RAILS_VERSION ----"
gem install rails -v $RAILS_VERSION

#-----------------------------------------
# Update All Packages Dependencies
#-----------------------------------------
echo -e "---- Update All Packages Dependencies Into Server ----"
sudo apt-get dist-upgrade -y
source ~/.profile