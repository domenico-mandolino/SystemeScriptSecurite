#!/bin/bash

# Vérification des privilèges root
if [ "$(id -u)" != "0" ]; then
    echo "Ce script doit être exécuté en tant qu'administrateur (root)."
    exit 1
fi

# Mettre à jour la liste des paquets disponibles
sudo apt update || { echo "Erreur lors de la mise à jour de la liste des paquets."; exit 1; }

# Afficher les paquets pouvant être mis à jour
echo "Paquets pouvant être mis à jour :"
apt list --upgradable

# Demander à l'utilisateur s'il souhaite mettre à jour les paquets
read -p "Voulez-vous mettre à jour les paquets ? (o/n) " choix

if [ "$choix" = "o" ]; then
    # Mettre à jour les paquets
    sudo apt upgrade || { echo "Erreur lors de la mise à jour des paquets."; exit 1; }
    echo "Mise à jour des paquets effectuée avec succès."
else
    echo "Aucune mise à jour n'a été effectuée."
fi

