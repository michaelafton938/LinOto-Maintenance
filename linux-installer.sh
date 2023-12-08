#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo "######################"
os=`lsb_release -a | grep -i ID`
echo "$os"
if [ "$os" == "Distributor ID:	ManjaroLinux" -o "$os" == "Distributor ID: Arch" ]
then
  echo "######################"
  echo "Mise à jour du systeme"
  echo "######################"
sudo pacman -Syu
install="sudo pacman -Sy"
elif [ "$os" == "Distributor ID: Ubuntu" -o "$os" == "Distributor ID: Debian" ]
then
  echo "######################"
  echo "Mise à jour du systeme"
  echo "######################"
  echo "Ubu/Deb"
sudo apt update && sudo apt install -y aptitude && sudo aptitude -y upgrade
install="sudo aptitude -y install"
fi

echo "Voulez-vous installer wine [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de wine"
eval "$install wine"
else
echo "Wine ne sera pas installer"
echo "######################"
fi

echo "Voulez-vous installer snapd et snap [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de snap"
eval "$install snapd snap"
else
echo "Snap ne sera pas installer"
echo "######################"
fi

echo "Voulez-vous installer Discord, Spotify, Sosumi [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de Spotify, discord et sosumi"
eval "$install spotify discord sosumi"
else
echo "Spotify, discord et sosumi ne seront pas installer"
fi
