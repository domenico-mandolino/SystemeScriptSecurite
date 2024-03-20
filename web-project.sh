#!/bin/bash

# Installation d'un serveur Web (Apache ou Nginx)
echo "Installation du serveur Web..."
sudo apt update
sudo apt install -y apache2   # Pour Apache
# sudo apt install -y nginx     # Pour Nginx

# Installation d'un système de gestion de base de données relationnelle (MySQL ou MariaDB)
echo "Installation de MariaDB..."
sudo apt install -y  mariadb-server 

# Installation de phpMyAdmin
echo "Installation de phpMyAdmin..."
sudo apt install -y phpmyadmin


# Installation de Node.js et npm
echo "Installation de Node.js et npm..."
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

# Installation de Git
echo "Installation de Git..."
sudo apt install -y git

echo "Installation terminée."
