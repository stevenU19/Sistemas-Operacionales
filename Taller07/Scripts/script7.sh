#!/bin/bash

archivo=script7.log

fecha=$(date +%Y-%m-%d)
hora=$(date +%H:%M:%S)

carga=$(uptime | awk '{print $10}')
mem_libre=$(free -m | grep Mem | awk '{print $4}')

echo "REGISTRO = Host: $(hostname) $fecha $hora Load: $carga Mem: $mem_libre" >> $archivo
echo "Registro agregado en $archivo"