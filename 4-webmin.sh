#!/bin/sh
#V3 PIERRE-AIME

echo "-------------------------------"
echo "Setup Webmin : check links"
echo "-------------------------------"

sudo grep -q download.webmin.com /etc/apt/sources.list

if [ $? -eq 0 ]
then
        echo "Link available maybe..."
else
	sudo chmod -R 777 /etc/apt/sources.list
	sudo echo " " >> /etc/apt/sources.list
	sudo echo "#Webmin links" >> /etc/apt/sources.list
  sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
  sudo echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
	sudo chmod -R 644 /etc/apt/sources.list

	sudo wget http://www.webmin.com/jcameron-key.asc
	sudo apt-key add jcameron-key.asc	
fi

echo "-------------------------------"
echo "Setup Webmin"
echo "-------------------------------"

sudo apt-get update

sudo apt-get install -y webmin

echo "-------------------------------"
echo "Info"
echo "-------------------------------"
echo "Installation WEBMIN complete !"
echo "Adresse : https://adresse_ip:10000/"
echo "En tant que root avec le mot de passe de root"
echo "Ou avec un utilisateur et son mot de passe qui peut utiliser la commande sudo"
