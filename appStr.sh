#!/bin/bash

#Ajoute extension aux fichiers selectionnés

SAVEIFS=$IFS
IFS=$'\t\n'

fichier=()

while [ $# -ne 1 ] ; do        #Décrémente jusqu'au dernier paramètre
    fichiers+=("$1")           #Ajoute fichiers dans tableau
    shift
done

for nameFile in fichier${array[@]} ; do     #Pour chaque élément du tab
    mv "$nameFile" "$nameFile$1"            #Renomme + str
done
