#!/bin/bash

# Tama�o l�mite en bytes
bytes=1 

# Nombre del archivo log a comprimir
archivo="script7.log"

# Obtener el tama�o del archivo en bytes
tamanio=$(du -b $archivo | cut -f 1)

# Comprobar si el tama�o del archivo supera el l�mite
if [ $tamanio -gt $bytes ]
then
  gzip $archivo
  echo "Archivo $archivo comprimido correctamente."
fi