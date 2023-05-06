#!/bin/bash

echo "Nombre del PRIMER archivo: "$1"" > script5.txt
echo "Nombre del SEGUNDO archivo: "$2"" >> script5.txt

# Tipo de archivo 
echo "- Tipo de archivo de ["$1"]: $(file -b "$1")" >> script5.txt
echo "- Tipo de archivo de ["$2"]: $(file -b "$2")" >> script5.txt

# Tamaño en Bytes
echo "* El tamaño en bytes para ["$1"] es: $(stat -c %s "$1")" >> script5.txt
echo "* El tamaño en bytes para ["$2"] es: $(stat -c %s "$2")" >> script5.txt

# Cantidad de Lineas
echo "- Cantidad de lineas: $(wc -l "$1")" >> script5.txt
echo "- cantidad de lineas: $(wc -l "$2")" >> script5.txt