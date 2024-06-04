#!/bin/bash
sudo apt update
sudo apt install wget net-tools unzip figlet apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2133_moso_interior.zip

sudo unzip -o 2133_moso_interior.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2133_moso_interior/* /var/www/html/
cd ..
sudo rm -rf webfiles
sudo systemctl restart apache2
figlet done
