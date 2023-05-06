#!/bin/bash

# Informacion del Sistema
echo "SISTEMA OPERATIVO: $(uname -s)" > script4.txt
echo "ARQUITECTURA DE LA MAQUINA: $(uname -m)" >> script4.txt
echo "VERSION DEL KERNEL: $(uname -r)" >> script4.txt