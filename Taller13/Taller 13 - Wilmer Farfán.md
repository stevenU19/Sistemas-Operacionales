# Taller 13
## *Wilmer Steven Farfán Castillo - 2194285*

## 1. Nombre y breve descripción de la herramienta:

**Stress-ng:**

*Stress-ng* es una herramienta que permite someter a un sistema a distintas pruebas de estrés y carga, especialmente en sistemas Linux. Se utiliza para evaluar el rendimiento, la estabilidad y la capacidad de respuesta de la máquina en condiciones extremas, generando diferentes cargas de trabajo, como estrés en la CPU, en la memoria, en el almacenamiento, en red y otros subsistemas del sistema. 
Permite a los administradores y desarrolladores simular condiciones de alta demanda para poder identificar posibles cuellos de botella, problemas de rendimiento, debilidades en la infraestructura y otros aspectos críticos con el fin de garantizar un funcionamiento robusto y eficiente del sistema.


## 2. Los comandos creados con una descripción de lo que hace y porqué lo hace:

*--metrics-brief*, es una bandera que proporciona información sobre el rendimiento y el estrés para cada comando. Estas medidas serán nuestro criterio de comparación:

- C1: ***stress-ng --cpu 4 --timeout 60 --metrics-brief:***

Este comando tiene como finalidad el simular una carga de trabajo en la CPU, utilizando para ello 4 hilos durante 1 minuto.

- C2: ***stress-ng --vm 2 --vm-bytes 1G --timeout 10 --metrics-brief:***

Este comando se encarga de generar una carga de trabajo de memoria utilizando 2 procesos y asignando 1GB de memoria a cada uno durante 60 segundos.

- C3: ***stress-ng --fork 4 --timeout 30 --metrics-brief:***

Este comando se encarga de crear 4 procesos hijo, es decir procesos adicionales, durante 30 segundos 

- C4: ***script -c " C1 " resultados.txt:***

Este comando de tipo script se encarga en crear un archivo txt, para almacenar en él las salidas por texto que genera el comando escrito entre las comillas ("C1").


## 3. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas:

**"Bogo ops"** es una abreviatura de "Bogus Operations" (operaciones ficticias o falsas), que realiza una estimación aproximada de la velocidad de la CPU.

**"Real Time"** indica el tiempo de ejecución real para cada caso.

**"Usr Time"** presenta el tiempo de ejecución utilizado por los procesos en el modo o espacio de usuario.

**"Sys Time"** muestra el tiempo de ejecución utilizado por el sistema operativo o el kernel.

**"Bogo Ops/s"** significa "Bogus Operations per Second" (operaciones ficticias por segundo) y es una métrica que se encarga de proporcionar una estimación de las operaciones ficticias que se pueden realizar en un segundo.

Se destaca el hecho de la variación de tiempo de las pruebas, puesto que cada métrica es independiente y se busca un mayor aleatoriedad en cada test. Además que se realizó en tiempos cortos para acelerar el proceso.


- **EVALUACIÓN DE CPU:**

A continuación se especifica la tabla de la evaluación de la CPU, para 5 ejecuciones distintas durante un periodo de tiempo de 60 segundos. La última fila descrita, corresponde a la media de los datos suministrados.

| Bogo Ops | Real Time | Usr Time | Sys Time | Bogo Ops/s |
|----------|-----------|----------|----------|------------|
|  145067  |   60,01   |  118,64  |   0,01   |  2417,53   |
|  145204  |   60,00   |  118,65  |   0,01   |  2419,89   |
|  145032  |   60,00   |  118,55  |   0,01   |  2417,12   |
|  145288  |   60,01   |  118,60  |   0,02   |  2421,23   |
|  145123  |   60,02   |  118,58  |   0,01   |  2419,65   |
||||||
| 145142,8 |   60,01   | 	118,60  |   0,01   |   2419,08  |

Como se puede apreciar en la tabla anterior, para un minuto de ejecución, la diferencia en el número de operaciones ficticias para cada ejecución no es mucha, sólo varían en unas cientas. Por otro lado, las métricas de tiempo también son interesantes puesto que no varían prácticamente nada una de la otra. Sin embargo, existe una diferencia más marcada en los bogo ops por segundo. Estos resultados son acordes a lo que se esperan, puesto que generalmente las pruebas varían durante cada ejecución.


- **EVALUACIÓN DE MEMORIA:**

A continuación se especifica la tabla de la evaluación de la memoria, para 5 ejecuciones distintas durante un periodo de tiempo de 10 segundos. La última fila descrita, corresponde a la media de los datos suministrados.

| Bogo Ops | Real Time | Usr Time | Sys Time | Bogo Ops/s |
|----------|-----------|----------|----------|------------|
| 1316840  |   10,32   |  18,13   |   2,25   | 127594,24  |
| 1300069  |   10,00   |  17,52   |   2,15   | 129950,16  |
| 1299890  |   10,00   |  17,32   |   2,36   | 129957,06  |
| 1300341  |   10,01   |  17,52   |   2,21   | 129960,06  |
| 1300384  |   10,00   |  17,54   |   2,15   | 129999,86  |
||||||
|1303487,82|   10,00   | 	17,60   |   2,22   | 129488,77  |

Según las pruebas plasmadas en la tabla anterior, para sólo 10 segundos la diferencia en el número de operaciones ficticias es un poco más notoria, variando en el orden de miles. Por otro lado, las métricas de tiempo no varían demasiado. Finalmente, existe una diferencia un poco menos notoria en bogo ops por segundo. Estos resultados, específicamente en el número de bogo ops es bastante grande, puesto que en la evaluación se mide con un gigabyte de memoria y el tiempo de sistema aumenta notoriamente respecto a la prueba anterior, considerando un tiempo general más pequeño.


- **EVALUACIÓN DE MANEJO DE PROCESOS E HILOS:**

A continuación se especifica la tabla de la evaluación de los procesos e hilos del sistema, para 5 ejecuciones distintas durante un periodo de tiempo de 30 segundos. La última fila descrita, corresponde a la media de los datos suministrados.

| Bogo Ops | Real Time | Usr Time | Sys Time | Bogo Ops/s |
|----------|-----------|----------|----------|------------|
|  304253  |   30,00   |   22,89  |   28,08  |  10146,89  |
|  308280  |   30,00   |   23,26  |   27,81  |  10275,85  |
|  317179  |   30,01   |   23,06  |   27,70  |  10572,42  |
|  321554  |   30,00   |   23,22  |   27,56  |  10315,17  |
|  309463  |   30,00   |   23,14  |   27,82  |  10284,75  |
||||||
| 312082,53|   30,00   | 	23,11   |   27,79  |  10318,08  |

Dado a los valores obtenidos y plasmados en la tabla anterior, con 30 segundos la diferencia en el número de operaciones ficticias es un bastante alta para los 4 procesos hijo. Las métricas de tiempo no varían demasiado entre sí y finalmente, existe una diferencia un poco más notoria en bogo ops por segundo. Estos resultados, sobre todo el tiempo de sistema sube a casi los 30 segundos reales, número que destaca y difiere bastante ante los anteriores test. Esto es debido al tipo de evaluación que se está ejecutando.

