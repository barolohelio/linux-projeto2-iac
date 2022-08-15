#!/bin/bash

echo "Atualizando servidor e instalando ferramentas"
apt-get update
apt-get upgrade -y
apt-get install apache -y
apt-get install unzip -y


echo "Clonando repositório e copiando arquivos da aplicação...."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

