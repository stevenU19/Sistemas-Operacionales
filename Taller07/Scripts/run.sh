#!/bin/bash

#1er script
bash script1.sh

#2do script: añadimos nuevos usuarios y un grupo para realizar las pruebas
sudo adduser usuario1
sudo adduser usuario2
sudo adduser usuario3
sudo groupadd grupo1
sudo usermod -aG grupo1 usuario2
sudo usermod -aG grupo1 usuario3
./script2.sh 777 usuario1 grupo1 script2.txt

#4to script
bash script4.sh

#5to script
bash script5.sh script1.txt script4.sh

#6to script
bash script6.sh

#7mo script
dos2unix script7.sh
bash script7.sh

#8vo script
dos2unix script8.sh
bash script8.sh

#9no script
crontab -e