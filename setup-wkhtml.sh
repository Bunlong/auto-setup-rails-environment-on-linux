#!/bin/bash
#!/bin/cp

#--------------------------------------------------
# Update Server
#--------------------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update
sudo apt-get upgrade -y
echo -e "---- Install wkhtml ----"
sudo wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb
sudo dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb
sudo apt-get -f install -y
sudo dpkg -i wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb
echo -e "---- Update wkhtml directory ----"
sudo cp /usr/local/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
sudo cp /usr/local/bin/wkhtmltoimage /usr/bin/wkhtmltoimage
echo -e "---- Remove wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb ----"
sudo rm wkhtmltox-0.12.2.1_linux-wheezy-amd64.deb