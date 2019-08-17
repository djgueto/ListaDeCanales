#!/bin/sh
rm /etc/enigma2/master.zip
rm -R /etc/enigma2/ListaDeCanales-master/
cd /etc/enigma2/
wget https://github.com/djgueto/ListaDeCanales/archive/master.zip
unzip master.zip
cp ListaDeCanales-master/*.tv /etc/enigma2/
cp ListaDeCanales-master/lamedb /etc/enigma2/
cp ListaDeCanales-master/downloadLdC.sh /usr/script/
cd /etc/enigma2/
rm master.zip
rm -R ListaDeCanales-master/
wget -qO - http://127.0.0.1/web/servicelistreload?mode0
