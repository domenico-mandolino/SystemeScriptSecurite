#!/bin/bash

# Vérification des privilèges root
if [ "$(id -u)" != "0" ]; then
    echo "Ce script doit être exécuté en tant qu'administrateur (root)."
    exit 1
fi

# Installation d'un serveur Web Nginx
echo "Installation de Nginx..."
sudo apt update
sudo apt install -y nginx

# Installation d'un système de gestion de base de données relationnelle MariaDB
echo "Installation de MariaDB..."
sudo apt install -y mariadb-server

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

echo "Installation terminée en toute sécurité."
