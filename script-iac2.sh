#!/bin/bash

echo "<>--- Iniciando Script ---<>"

echo "<>--- Atualizando o servidor ---<>"

apt_get update
apt_get upgrade

echo "<>--- Realizando instalacoes necessarias ---<>"

apt_get install apache2 unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio-main
cp-R * /var/www/html/

echo "<>---- Finalizado ----<>"
