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

- **Copiar el contexto actual:** El kernel debe guardar el contexto del proceso actual antes de hacer cualquier cambio. El contexto del proceso incluye información como el valor de los registros del procesador, el estado de la memoria y los recursos utilizados por el proceso.

- **Seleccionar el proceso siguiente:** El proceso siguiente puede ser el que está esperando para utilizar los recursos que el proceso actual está utilizando, el proceso con la mayor prioridad, o un proceso elegido al azar.

- **Restaurar el contexto del proceso siguiente:** Una vez que se ha seleccionado el proceso siguiente, el kernel debe restaurar el contexto del proceso seleccionado. Esto implica cargar los valores de los registros del procesador, el estado de la memoria y los recursos que el proceso necesita para continuar su ejecución.

- **Cambiar el proceso en ejecución:** Después de que se ha restaurado el contexto del proceso siguiente, el kernel puede cambiar la ejecución del procesador al proceso siguiente. En este momento, el proceso siguiente comienza a ejecutarse.


## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona:

**Comunicación Síncrona:**

Entre las ventajas se pueden encontrar es la facilidad de implementar y hacer efectiva la comunicación entre los procesos. Además es muy útil cuando se puede visualizar la ejecución de un proceso que pide respuesta por parte de otro para continuar con la ejecución. 

Como desventajas, se encuentra la espera en la ejecución, debido al tiempo que tarda un proceso en procesar información. Incluso este tipo de comunicación puede generar problemas de concurrencia en aplicaciones con alto tráfico.

**Comunicación Asíncrona:**

Como ventajas se tiene la ejecución continua de los procesos que envían y reciben información, que no requieren de la espera de respuestas a una petición. También reduce los problemas de concurrencia en aplicaciones de alto tráfico.

Entre las desventajas, se tiene la dificultad de su implementación y de sus depuración, debido a su naturaleza que requiere de un mecanismo para manejarla y puede generar resultados erróneos.


# 5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia:

**Envío por Copia:**

Como ventajas se tiene que es más seguro para el sistema operativo y es más fácil su implementación y su depuración. Esto debido a que no se puede modificar el valor original del parámetro que se envía.
Entre la desventajas se tiene que es menos eficiente porque se debe crear una copia del parámetro cada vez que se llama a la función o procedimiento. Además no es adecuado para el uso de parámetros grandes porque pueden afectar el rendimiento del sistema.

**Envío por Copia:**

Entre las ventajas, este sistema es más eficiente y adecuado para parámetros grandes.
Como desventaja se tiene la vulnerabilidad. Es mucho menos seguro para el OS que se puede modificar el valor original del parámetro que se envía. 
