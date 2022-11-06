#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2, Unzip e Wget..."

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y


echo "Baixando e copiando os arquivos base do Site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/




