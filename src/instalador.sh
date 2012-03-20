#!/bin/bash

versao=`lsb_release -c | awk '{print $2}'`

if [ ! "$versao" = "natty" ] && [ ! "$versao" = "oneiric" ]; then
	echo "Desculpe, mas o software não está disponivel para esta versão de SO" 
	sleep 3
	exit
fi

if [ ! "`whoami`" = "root" ]; then
		echo " "
		echo "====================================================================="
		echo " Esse script deveria ser rodado com a permissão de sudo!"
		echo " Durante a execução deste script, pode lhe ser solicitado tal acesso."
		echo "====================================================================="
fi


echo "Removendo possiveis versões antigas..."
if [ "$versao" = "natty" ] then
	sudo apt-get remove libopencv-dev python-opencv python-numpy > /dev/null
elif [ "$versao" = "oneiric" ] then
	sudo apt-get remove libcv-dev python-opencv python-numpy > /dev/null

echo "Adicionando repositórios..."
sudo add-apt-repository ppa:gijzelaar/cuda > /dev/null
sudo add-apt-repository ppa:gijzelaar/opencv2.3 > /dev/null

echo "Atualizando o sistema..."
sudo apt-get update > /dev/null

echo "Instalando pré-requisitos..."
if [ "$versao" = "natty" ] then
	sudo apt-get -y install libopencv-dev python-opencv python-numpy
elif [ "$versao" = "oneiric" ] then
	sudo apt-get -y install libcv-dev python-opencv python-numpy
fi

echo "Fornecendo permissão para execução..."
sudo chmod +x * -R

