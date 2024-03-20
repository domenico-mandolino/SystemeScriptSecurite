#!/bin/bash

# Répertoire à sauvegarder
repertoire_source="./Plateforme"

# Répertoire de sauvegarde
repertoire_sauvegarde="./Plateforme/historique"

# Vérification et création des répertoires s'ils n'existent pas
if [ ! -d "$repertoire_source" ] || [ ! -d "$repertoire_sauvegarde" ]; then
    echo "Erreur : Répertoire source ou répertoire de sauvegarde manquant."
    exit 1
fi

# Création d'un répertoire pour l'historique des sauvegardes s'il n'existe pas
if [ ! -d "$repertoire_sauvegarde/historique" ]; then
    mkdir -p "$repertoire_sauvegarde/historique"
fi

# Nom du fichier de sauvegarde avec horodatage sécurisé
nom_fichier_sauvegarde="sauvegarde_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

# Archivage du répertoire source avec vérification
tar -zcvf "$repertoire_sauvegarde/$nom_fichier_sauvegarde" "$repertoire_source" || { echo "Erreur lors de l'archivage."; exit 1; }

# Copie sécurisée de la sauvegarde dans le répertoire d'historique
mv "$repertoire_sauvegarde/$nom_fichier_sauvegarde" "$repertoire_sauvegarde/historique/" || { echo "Erreur lors de la copie dans l'historique."; exit 1; }

echo "Sauvegarde effectuée avec succès."
