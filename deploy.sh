#!/bin/sh

read -p "Quel est le nom du site webflow à déployer? " SITE

URL=http://$SITE.webflow.io/
echo $URL

#read -p "Quel est le chemin du dossier en local où le charger? " PATH
#cd $PATH

wget $URL -r --page-requisites --html-extension --convert-links -xnH -e robots=off

read -p "Commit: " COMMIT

git add . && git commit -m "$COMMIT" && git push
