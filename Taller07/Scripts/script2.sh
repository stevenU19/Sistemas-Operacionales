#!/bin/bash

permisos=$1
usuario=$2
grupo=$3
archivo=$4

chmod $permisos $archivo
chown $usuario:$grupo $archivo

echo "El archivo $archivo ha sido modificado correctamente" >> script2.txt