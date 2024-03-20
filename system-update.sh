#!/bin/bash

# Mettre à jour la liste des paquets disponibles
sudo apt update

# Afficher les paquets pouvant être mis à jour
echo "Paquets pouvant être mis à jour :"
apt list --upgradable

# Demander à l'utilisateur s'il souhaite mettre à jour les paquets
read -p "Voulez-vous mettre à jour les paquets ? (o/n) " choix

if [ "$choix" = "o" ]; then
    # Mettre à jour les paquets
    sudo apt upgrade
    echo "Mise à jour des paquets effectuée avec succès."
else
    echo "Aucune mise à jour n'a été effectuée."
fi
