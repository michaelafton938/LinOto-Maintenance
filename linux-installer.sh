#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo "######################"
echo "Mise à jour du systeme et installation aptitude"
echo "######################"
sudo apt update && sudo apt install -y aptitude && sudo aptitude -y upgrade
echo "Voulez-vous installer wine [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de wine"
sudo aptitude -y install wine
echo "######################"
echo "Installation de Spotify, discord et sosumi"
sudo snap install spotify discord sosumi
else
echo "Wine ne sera pas installer"
echo "######################"
echo "Installation de Spotify, discord et sosumi"
sudo snap install spotify discord sosumi
fi
# installer uniquement wine si vous etes pas sur Zorin OS
# installer uniquement sosumi si vous avez les paquets snap faites pas ca si vous etes sur debian ou Linux Mint
