#!/bin/bash

# Répertoire à sauvegarder
repertoire_source="./Plateforme"

# Répertoire de sauvegarde
repertoire_sauvegarde="./Plateforme/historique"

# Création d'un répertoire pour l'historique des sauvegardes s'il n'existe pas
if [ ! -d "$repertoire_sauvegarde/historique" ]; then
    mkdir -p "$repertoire_sauvegarde/historique"
fi

# Nom du fichier de sauvegarde avec horodatage
nom_fichier_sauvegarde="sauvegarde_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

# Archivage du répertoire source
tar -zcvf "$repertoire_sauvegarde/$nom_fichier_sauvegarde" "$repertoire_source"

# Copie de la sauvegarde dans le répertoire d'historique
mv "$repertoire_sauvegarde/$nom_fichier_sauvegarde" "$repertoire_sauvegarde/historique/"

echo "Sauvegarde effectuée avec succès."
