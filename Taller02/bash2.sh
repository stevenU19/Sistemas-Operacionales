#!/bin/bash

cd Carpeta1/Carpeta2

read -ra vector1 < Archivo1
read -ra vector2 < Archivo2


declare -a vectorSuma

for ((i=0; i<5; i++))
do
 vectorSuma[$i]=$(( ${vector1[$i]} + ${vector2[$i]} ))
done

echo "El vector 1 es: ${vector1[@]}"
echo "El vector 2 es: ${vector2[@]}"
echo "La suma total es: ${vectorSuma[@]}"

echo ${vectorSuma[@]} > Archivo3
