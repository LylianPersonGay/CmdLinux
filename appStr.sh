#!/bin/bash

#Ajoute str aux fichiers selectionnés

SAVEIFS=$IFS
IFS=$'\t\n'

fichier=()

if [ $# -lt 2 ] ; then
    echo "Need at least 2 parameter"
    exit -1
fi

while [ $# -ne 1 ] ; do        #Décrémente jusqu'au dernier paramètre
    if [ ! -e $1 ] ; then
        echo "The file doesn't exist"
        exit -1
    fi

    fichiers+=("$1")           #Ajoute fichiers dans tableau
    shift
done

for nameFile in ${fichiers[@]} ; do     #Pour chaque élément du tab
    mv "$nameFile" "$nameFile$1"            #Renomme + str
done

IFS=$SAVEIFS
exit 0
