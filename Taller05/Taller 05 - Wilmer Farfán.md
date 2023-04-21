# Taller 05
## *Wilmer Steven Farfán Castillo - 2194285*


## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo:

La planificación a corto plazo y largo plazo son dos enfoques distintos que se utilizan en la gestión de sistemas. Sus diferencias radican en ciertas actividades que repercuten en el sistema.

- **Tiempo:** En la planificación a corto plazo se enfoca en un rango de tiempo de unas pocas horas a unos pocos días, mientras que a largo plazo se enfoca en un futuro más lejano, de meses a varios años.

- **Nivel de detalle:** La planificación a corto plazo se centra en la gestión de recursos inmediata, como la asignación de recursos de CPU, la administración de memoria y la planificación de E/S. Por otro lado, la planificación a largo plazo se enfoca en la gestión estratégica del sistema operativo, como la planificación de actualizaciones, la adopción de nuevas tecnologías y la capacidad de escalabilidad a largo plazo.

- **Flexibilidad:** A corto plazo, el sistema se planifica de forma más flexible, para ser adaptada rápidamente en función a las nuevas necesidades, mientras que la planificación a largo plazo es menos flexible porque está diseñada para funcionar durante un período de tiempo mucho más prolongado, dificultando su adaptabilidad.

- **Objetivos:** La planificación a corto plazo se centra en objetivos como la eficiencia del sistema, la productividad y la reducción de costos. En cambio, a largo plazo se centra en objetivos como la escalabilidad del sistema, la seguridad y la innovación


## 2. Caracterice dos procesos que se puedan considerar a mediano plazo:

Los cambios a mediano plazo son aquellos que tienen una duración de unos meses a unos pocos años, permiten establecer objetivos intermedios que permitan estructurar el sistema a largo plazo.

- **Planificación estratégica**: Implica la identificación de los requisitos actuales y futuros, la evaluación de las capacidades, limitaciones y la identificación de oportunidades para mejorar la eficiencia, seguridad y escalabilidad del sistema.

- **Desarrollo de nuevos productos o servicios**: El desarrollo de nuevos productos o servicios en el contexto de la gestión de sistemas puede involucrar la evaluación y adopción de nuevas tecnologías y herramientas para mejorar la eficiencia y el rendimiento del OS. Esto puede incluir la evaluación y adopción de nuevas versiones, la implementación de nuevas herramientas de gestión, de monitoreo y la adopción de nuevas tecnologías de virtualización.


## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos:

El cambio de contexto es un proceso en el que el kernel del OS cambia la ejecución de un proceso por otro. Esto puede ocurrir, en la finalización de un proceso, la espera de un recurso, la ejecución de una interrupción de hardware, entre otras razones más. Las acciones que toma el kernel son:

- *Copiar el contexto actual:* El kernel debe guardar el contexto del proceso actual antes de hacer cualquier cambio. El contexto del proceso incluye información como el valor de los registros del procesador, el estado de la memoria y los recursos utilizados por el proceso.

- *Seleccionar el proceso siguiente:* El proceso siguiente puede ser el que está esperando para utilizar los recursos que el proceso actual está utilizando, el proceso con la mayor prioridad, o un proceso elegido al azar.

- *Restaurar el contexto del proceso siguiente:* Una vez que se ha seleccionado el proceso siguiente, el kernel debe restaurar el contexto del proceso seleccionado. Esto implica cargar los valores de los registros del procesador, el estado de la memoria y los recursos que el proceso necesita para continuar su ejecución.

- *Cambiar el proceso en ejecución:* Después de que se ha restaurado el contexto del proceso siguiente, el kernel puede cambiar la ejecución del procesador al proceso siguiente. En este momento, el proceso siguiente comienza a ejecutarse.


## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona:

**Comunicación Síncrona:**

- Entre las ventajas se pueden encontrar es la facilidad de implementar y hacer efectiva la comunicación entre los procesos. Además es muy útil cuando se puede visualizar la ejecución de un proceso que pide respuesta por parte de otro para continuar con la ejecución. 
- Como desventajas, se encuentra la espera en la ejecución, debido al tiempo que tarda un proceso en procesar información. Incluso este tipo de comunicación puede generar problemas de concurrencia en aplicaciones con alto tráfico.

**Comunicación Asíncrona:**

- Como ventajas se tiene la ejecución continua de los procesos que envían y reciben información, que no requieren de la espera de respuestas a una petición. También reduce los problemas de concurrencia en aplicaciones de alto tráfico.
- Entre las desventajas, se tiene la dificultad de su implementación y de sus depuración, debido a su naturaleza que requiere de un mecanismo para manejarla y puede generar resultados erróneos.


# 5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia:

**Envío por Copia:**

- Como ventajas se tiene que es más seguro para el sistema operativo y es más fácil su implementación y su depuración. Esto debido a que no se puede modificar el valor original del parámetro que se envía. Entre la desventajas se tiene que es menos eficiente porque se debe crear una copia del parámetro cada vez que se llama a la función o procedimiento. Además no es adecuado para el uso de parámetros grandes porque pueden afectar el rendimiento del sistema.

**Envío por Copia:**

- Entre las ventajas, este sistema es más eficiente y adecuado para parámetros grandes.
Como desventaja se tiene la vulnerabilidad. Es mucho menos seguro para el OS que se puede modificar el valor original del parámetro que se envía. 


## 6. Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable:

**Mensajes Tamaño Fijo:**

- Como ventajas se tiene la facilidad de implementación en el OS, la eficiencia en el manejo de recursos debido a que tienen un tamaño determinado. Este tamaño fijo causa que exista menos latencia, aumentando la velocidad de transferencia.
- Como desventajas se tiene el uso de espacio fijo que requiere el mensaje, causando problemas en aquellos sistemas con recursos limitados.


**Mensajes Tamaño Variable:**

- Entre las ventajas que se tiene con este tipo de mensajes, es la mayor flexibilidad que ofrecen debido a que puede adaptarse fácilmente a las necesidades de cualquier aplicación. Y pueden llegar a ser más eficientes ahorrando espacio en memoria.
- Entre las desventajas, se encuentra la necesidad de un complejo mecanismo para el control del flujo, aumentando la carga de trabajo del OS. Además, existe mayor latencia.


## 7. Describa los estados de un proceso:

Un proceso es un programa en ejecución en el sistema operativo, que puede estar en diferentes estados dependiendo de su estado actual de ejecución:

- *1. Nuevo:* En este paso, el proceso se acaba de crear y no ha sido asignado a la CPU para su ejecución.
- *2. Preparado:* El proceso ha sido cargado en memoria y está listo para ser ejecutado. Sin embargo, todavía no se le ha asignado tiempo de CPU.
- *3. Ejecución:* En este paso, el proceso está actualmente siendo ejecutado por la CPU ya sea usando recursos de la CPU o esperando su asignación.
- *4. Bloqueado:* El proceso se encuentra en espera de algún recurso, como una entrada o salida de un dispositivo. Este no puede continuar su ejecución hasta que este recurso esté disponible.
- *5. Terminado:* El proceso ya ha finalizado su ejecución. Además, se han liberado la memoria y los recursos asignados.


## 8. ¿Qué datos se encuentran en un PCB?:

Un PCB (Process Control Block) es un registro especial donde el sistema operativo agrupa toda la información que necesita conocer respecto a un proceso particular. Proporciona una forma eficiente de administrar y controlar los procesos en ejecución. Los datos que se encuentran en un PCB pueden variar dependiendo del sistema operativo específico, pero algunos de los elementos más comunes que se incluyen son:

- *Identificador de Proceso*, que es un número único que identifica el proceso en el sistema operativo.
- *Estado del Proceso*, que se encarga de indicar si el proceso está en ejecución, suspendido, bloqueado o finalizado.
- *Contador de Programa*, encargado en mantener la dirección en memoria, de la próxima instrucción que debe ejecutar el proceso.
- *Información de Memoria*, la cual contiene información sobre la memoria que utiliza el proceso, incluyendo su tamaño, dirección y permisos de acceso.
- *Información de Recursos*, incluye información sobre los recursos que el proceso está utilizando, como archivos abiertos, dispositivos de entrada/salida, entre otros.
- *Información de Planificación*, la cual contiene información sobre la prioridad del proceso, su estado de espera y otros detalles relevantes para la planificación del sistema.
- Información del Propietario, que mantiene información sobre el usuario o grupo que creó el proceso y sus permisos de acceso.


## 9. Describa un modelo de comunicación Cliente-Servidor

El modelo de comunicación Cliente-Servidor es un patrón arquitectónico desarrollado para el diseño de apliaciones de software. El cliente es la parte de la aplicación que se ejecuta en el dispositivo del usuario y solicita recursos al servidor. El servidor es la parte que se ejecuta en un servidor remoto y proporciona los servicios o recursos solicitados por el cliente.

El proceso de comunicación en este modelo se realiza a través de la red, utilizando un protocolo de comunicación, como HTTP, TCP/IP o UDP. El cliente envía solicitudes al servidor utilizando el protocolo adecuado y espera a que el servidor responda con los datos solicitados.

El modelo puede ser de varios tipos, que varían sobre la forma en que se realizan las solicitudes.

- *Modelo de solicitud-respuesta:* El cliente envía una solicitud al servidor y espera una respuesta inmediata. Una vez que el servidor proporciona la respuesta, el cliente puede continuar con su ejecución.

- *Modelo basado en eventos:* El servidor notifica al cliente cuando ocurre un evento relevante, como una actualización de datos o un cambio en el estado del sistema.

- *Modelo de transmisión continua:* El servidor envía datos al cliente de forma continua, sin esperar una solicitud explícita del cliente. Este modelo se utiliza a menudo para transmitir video o audio en tiempo real

