# Taller 13
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Nombre y breve descripción de la herramienta:

**Stress-ng:**

*Stress-ng* es una herramienta que permite someter a un sistema a distintas pruebas de estrés y carga, especialmente en sistemas Linux. Se utiliza para evaluar el rendimiento, la estabilidad y la capacidad de respuesta de la máquina en condiciones extremas, generando diferentes cargas de trabajo, como estrés en la CPU, en la memoria, en el almacenamiento, en red y otros subsistemas del sistema. 

Permite a los administradores y desarrolladores simular condiciones de alta demanda para poder identificar posibles cuellos de botella, problemas de rendimiento, debilidades en la infraestructura y otros aspectos críticos con el fin de garantizar un funcionamiento robusto y eficiente del sistema.

## 2. Los comandos creados con una descripción de lo que hace y porqué lo hace:

- C1: **stress-ng --cpu 4 --timeout 60 --metrics-brief:** Este comando tiene como finalidad el simular una carga de trabajo en la CPU, utilizando para ello 4 hilos durante 1 minuto. 
- C2: **stress-ng --vm 2 --vm-bytes 1G --timeout 60 --metrics-brief:** Este comando sen encarga de generar una carga de trabajo de memoria utilizando 2 procesos y asignando 1GB de memoria a cada uno durante 60 segundos.
- C3: **stress-ng --all 2 --timeout 60 --metrics-brief:** Esta instrucción indica la generación de una carga de trabajo en todos los subsistemas disponibles del sistema durante 1 minuto utilizando 2 hilos.
- C4: **script -c " C1 " resultados.txt:** Este comando de tipo script se encarga en crear un archivo txt, para almacenar en él las salidas por texto que genera el comando escrito entre las comillas.

## 3. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas:

- **EVALUACIÓN DE CPU:**

| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1    | Cell 2   | Cell 3   |
| Row 2    | Cell 5   | Cell 6   |
| Row 3    | Cell 8   | Cell 9   |

| bogo ops | real time | usr time | sys time | bogo ops/s
|----------|----------|----------|
| 145067 | 60,01 | 118,64 | 0,01 | 2417,53
| 145204 | 60 | 118,65 | 0,01 | 2419,89
| 145032 | 60 | 118,55 | 0,01 | 2417,12
| 145288 | 60,01 | 118,6 | 0,02 | 2421,23
| 145123 | 60,02 | 118,58 | 0,01 | 2419,65
| 145142,77 | 60,01	118,60 | 0,01 | 2419,08




![image](https://github.com/stevenU19/Sistemas-Operacionales/assets/86494104/249767f7-ca68-4198-aa4c-46fb66f58f3c)


- **EVALUACIÓN DE MEMORIA:**

