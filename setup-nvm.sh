#!/bin/bash

#-----------------------------------------
#Install NVM for nodejs package manager
#-----------------------------------------
echo -e "---- Install NVM for Nodejs Package Manager Into Server ----"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
source ~/.profile
echo -e "---- Install NodeJS and IOJS Into NVM ----"
. ~/.nvm/nvm.sh
nvm install stable
nvm install iojs
echo -e "---- Set NodeJS as Default Framework ----"
nvm alias default stable
nvm use default