#!/bin/bash

# Tamaño límite en bytes
bytes=1 

# Nombre del archivo log a comprimir
archivo="script7.log"

# Obtener el tamaño del archivo en bytes
tamanio=$(du -b $archivo | cut -f 1)

# Comprobar si el tamaño del archivo supera el límite
if [ $tamanio -gt $bytes ]
then
  gzip $archivo
  echo "Archivo $archivo comprimido correctamente."
fi