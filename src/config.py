# -*- coding: utf8 -*- 
'''
Created on Mar 6, 2012

@author: guilherme
'''
from os import path, mkdir


'''
Parametros a ser dado pelo usuário
'''
pathImagesEntrada = path.expanduser("~/ImagensEntrada/")
pathImagesSaida = path.expanduser("~/ImagensSaida/")
pathImagesSaidaProcessadas = pathImagesSaida+"processadas/"
pathImagesSaidaRaw = pathImagesSaida+"raw/"
pathImagesSaidaNuvens = pathImagesSaida+"nuvens/"
pathLog = path.expanduser("~/.rastreadorNuvens/")
listenerTimer = 5
imgTime = 2
UltimasList = 10

if (not path.exists(pathImagesEntrada)):
    mkdir(pathImagesEntrada)
if (not path.exists(pathImagesSaida)):
    mkdir(pathImagesSaida)
if (not path.exists(pathImagesSaidaProcessadas)):
    mkdir(pathImagesSaidaProcessadas)
if (not path.exists(pathImagesSaidaRaw)):
    mkdir(pathImagesSaidaRaw)
if (not path.exists(pathImagesSaidaNuvens)):
    mkdir(pathImagesSaidaNuvens)
if (not path.exists(pathLog)):
    mkdir(pathLog)