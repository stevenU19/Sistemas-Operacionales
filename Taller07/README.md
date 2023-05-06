# Taller 07
## *Wilmer Steven Farfán Castillo - 2194285*

El repositorio se compone de 9 scripts, referentes a la solución de cada uno de los casos de uso propuestos. Además contiene un archivo en txt referente a las salidas de todos los script. Finalmente existe un archivo adicional llamado run.sh, que se encarga de realizar la ejecución de todos los scripts, salvo en algunos casos. Para facilitar la visualización de los archivos, en la carpeta scripts se encuentra una copia de cada uno de los ejecutables solicitados. Sin embargo, se presentan previamente todas las salidas y todos los scripts, debido a que algunos de ellos requieren de la existencia de algunos archivos de salida de los casos anteriores.
Los archivos con formato de imagen, son necesarios para la ejecución del script6.


1. **Escriba un script que liste los comandos ejecutados en la terminal, los ordene, los cuente:** 
Salida del archivo, **script1.txt**

2. **Escriba un script que modifique los permisos, usuario y grupo de un archivo con los argumentos pasados al script, arg1=permisos, arg2=usuario, arg3=grupo.**
Para este caso, se crearon varios usuarios y un grupo, en los cuales se añadieron 2 de estos nuevos usuarios a dicho grupo. En el archivo run.sh, se encuentran los comandos citados.

3. **Escriba un script que agregue un alias no volátil:** 
Para este punto, se debe ejecutar cada comando "alias" en la consola, con el fin de asignar los comandos.

4. **Escriba un script que liste el Sistema Operativo, la arquitectura de la máquina, la versión del kernel:** 
Salida del archivo, **script4.txt**

5. **Escriba un script al que pase como argumento dos archivos, muestre el tipo de archivo, los compare a nivel de bytes, a nivel de lineas y muestre sus diferencias:** 
Salida del archivo, **script5.txt**, se le pasan como argumentos dos archivos previamente creados para la comparación.

6. **Escriba un script que busque todos los archivos .txt, .png y .jpg que estén en el OS:** 
Se adjunta unos archivos adicionales con la extensión png y jpg, para probar la búsqueda. Salida del archivo, **script6.txt**

7. **Escriba un script que genere una archivo .log. Cada que el script se ejecute debe registrar en una linea la fecha, hora, minutos, segundos, el hostname, la carga del sistema y la memoria libre.** Salida del archivo, **script7.log**. Para este caso, se convierte el script a formato unix para evitar errores en la ejecución.

8. **Escriba un escript que comprima el archivo .log si supera cierto tamaño el archivo.** Salida del archivo, **script7.log.gz**. Para este caso, se convierte el script a formato unix para evitar errores en la ejecución y el archivo comprimido se genera en formato .gz.

9. **Automatice con crontab el script 7 y 8, el script 7 se debe ejecutar cada 5 minutos y el script 8 cada minuto.** Script del archivo, **script9.md**. Previamente se ejecuta el comando crontab -e, como se evidencia en el archivo run.sh
