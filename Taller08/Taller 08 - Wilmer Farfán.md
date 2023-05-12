# Taller 08
## *Wilmer Steven Farfán Castillo - 2194285*


## 1. ¿Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?:
Se debe diferenciar entre ambos debido a que estos programas tienen diferentes patrones de comportamiento y requerimientos de recursos, lo que puede afectar significativamente en la eficiencia del planificador.

Un programa limitado por I/O requiere que se realicen muchas operaciones de entrada/salida con dispositivos de almacenamiento externos, como discos duros, unidades flash USB, impresoras, monitores, parlantes etc. Estas operaciones suelen ser más lentas en comparación con las operaciones de procesamiento en la CPU. A menudo el programa tendrá que esperar a que se completen estas operaciones antes de poder continuar con el proceso. Es importante para el planificador asegurarse de que estos procesos no ocupen recursos de la CPU innecesariamente. Un planificador eficiente para este tipo de programa será capaz de detectar cuando un proceso está esperando una operación de I/O y cambiar a otro proceso que no esté esperando por I/O.

Por otro lado, un programa limitado por CPU es aquel que requiere principalmente procesamiento de datos y cálculos complejos. Este no realiza muchas operaciones de I/O y el rendimiento del programa se limita por la velocidad de la CPU y la cantidad de núcleos disponibles. En este caso, el planificador debe asegurarse de que los procesos que requieren mucha CPU no sean interrumpidos innecesariamente por procesos que requieren menos CPU.


## 2. ¿Cómo entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?:

La utilización de CPU y el tiempo de respuesta pueden entrar en conflicto cuando hay una carga pesada de trabajo en el sistema. Si hay demasiados procesos en ejecución y la CPU está constantemente ocupada, el tiempo de respuesta puede verse afectado. Si un proceso que requiere una respuesta rápida del sistema tiene que esperar demasiado tiempo para que se complete debido a la carga pesada de trabajo, puede hacer que el sistema parezca lento o poco receptivo.

Por otro lado, si se prioriza el tiempo de respuesta en detrimento de la utilización de la CPU, esto puede limitar la cantidad de procesos que se pueden ejecutar simultáneamente. Si el planificador se centra en reducir el tiempo de respuesta de los procesos, puede decidir interrumpir un proceso que esté utilizando la CPU intensivamente, incluso si el proceso aún no ha completado su trabajo. Esto conlleva a una utilización ineficiente de la CPU, debido a que los procesos que requieren más tiempo de CPU se verán interrumpidos y tendrán que esperar más tiempo para completar su trabajo. Es importante encontrar un equilibrio adecuado entre la utilización de la CPU y el tiempo de respuesta para maximizar la eficiencia del sistema y garantizar una experiencia del usuario satisfactoria.


## 3. ¿Cómo entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?:

El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto debido a la asignación de recursos y la priorización de procesos. El tiempo medio de procesamiento se refiere al promedio de tiempo que tardan los procesos en completarse, mientras que el tiempo máximo de espera se refiere al tiempo máximo que un proceso está dispuesto a esperar antes de recibir una respuesta. Si un proceso tiene un tiempo máximo de espera muy corto, es posible que se interrumpa antes de que se complete su trabajo. Por otro lado, si el tiempo medio de procesamiento es muy largo, los procesos pueden acumularse en la cola de procesos en espera y el tiempo máximo de espera se verá afectado.

Si se da prioridad al tiempo medio de procesamiento en detrimento del tiempo máximo de espera, los procesos que requieren más tiempo de CPU pueden tener una ventaja injusta, lo que podría hacer que los procesos más pequeños se queden esperando indefinidamente. Por otro lado, si se da prioridad al tiempo máximo de espera en detrimento del tiempo medio de procesamiento, los procesos que requieren más tiempo de CPU pueden ser interrumpidos antes de completar su trabajo, lo que podría afectar la eficiencia del sistema y la calidad del servicio. Es importante encontrar un equilibrio adecuado entre el tiempo medio de procesamiento y el tiempo máximo de espera para garantizar que todos los procesos tengan una oportunidad justa de completarse y que los procesos que requieren más tiempo de CPU no sean interrumpidos innecesariamente.


## 4. ¿Cómo entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?:

Cuando un proceso necesita acceder a un dispositivo de entrada/salida, como un disco duro o una impresora, envía una solicitud al controlador de dispositivo correspondiente. La CPU entonces espera a que el controlador de dispositivo procese la solicitud antes de continuar con el siguiente proceso. Si hay muchos procesos que requieren acceso al mismo dispositivo de I/O, la CPU puede esperar inactiva durante largos períodos de tiempo mientras el controlador de dispositivo procesa las solicitudes pendientes. Esto puede provocar una baja utilización de la CPU, lo que puede ralentizar el sistema en general.

Por otro lado, si la CPU está demasiado ocupada procesando otros procesos y no está disponible para procesar las solicitudes de entrada/salida, se puede producir un cuello de botella en el rendimiento del sistema. Los procesos que requieren acceso a dispositivos de entrada/salida pueden quedarse en la cola de procesos pendientes y experimentar un retraso significativo en la finalización de su trabajo. Para evitar este conflicto, los planificadores deben encontrar un equilibrio adecuado entre la utilización de los dispositivos de entrada/salida y la utilización de la CPU. Por ejemplo, se puede utilizar un planificador de E/S para optimizar el uso de los dispositivos de E/S y reducir el tiempo de espera de los procesos que los utilizan. Además, el planificador puede priorizar los procesos que requieren acceso a los dispositivos de entrada/salida y garantizar que la CPU esté disponible para procesar las solicitudes de E/S.


## 6. ¿Cuál es el tiempo de ejecución de cada proceso para cada algoritmo?:

El tiempo de ejecución de cada proceso varía según el algoritmo de planificación utilizado y las características específicas de cada proceso y del sistema.

- **En un algoritmo de planificación FCFS (Primero en llegar, primero en ser atendido):** El tiempo de ejecución de cada proceso depende del tiempo de llegada de los procesos y del tiempo de CPU que necesita cada proceso. Los procesos se ejecutan en el orden en que llegan al sistema, por lo que llegan primero se ejecutan antes. Los procesos que requieren más tiempo de CPU pueden tener un tiempo de ejecución más largo, lo que podría retrasar la finalización de otros procesos.

- **En un algoritmo de planificación SJF (Primero el trabajo más corto):** El tiempo de ejecución de cada proceso depende del tiempo de CPU que necesita cada proceso. Los procesos se ejecutan en orden ascendente de duración, comenzando con el proceso que requiere el menor tiempo de CPU. Los procesos más cortos se ejecutan primero, lo que puede reducir el tiempo de espera de los otros.

- **En un algoritmo de planificación Round Robin (RR):** El tiempo de ejecución depende del tiempo de cuantum establecido para el planificador. Los procesos se ejecutan en intervalos de tiempo iguales y luego se intercambian por el siguiente proceso en la cola. Los procesos que requieren más tiempo de CPU pueden requerir múltiples ciclos de cuantum para completarse, lo que podría afectar el tiempo de respuesta de otros procesos.


## 7. ¿Cuál es el tiempo de espera de cada proceso para cada algoritmo?:

El tiempo de espera de cada proceso varía según el algoritmo de planificación utilizado y las características específicas de cada proceso y del sistema.

- **En un algoritmo de planificación FCFS (Primero en llegar, primero en ser atendido):** El tiempo de espera de cada proceso depende del tiempo de llegada de los procesos anteriores. Si hay un proceso que llega temprano y tarda mucho tiempo en ejecutarse, los procesos que llegan después deben esperar más tiempo para ser atendidos. El tiempo de espera puede aumentar significativamente si el proceso que llega primero es muy largo.

- **En un algoritmo de planificación SJF (Primero el trabajo más corto):** El tiempo de espera de cada proceso depende del tiempo de CPU que necesita cada proceso y del orden en que llegan los procesos. Los procesos más cortos se ejecutan primero, lo que puede reducir el tiempo de espera de otros procesos.

- **En un algoritmo de planificación Round Robin (RR):** El tiempo de espera de cada proceso depende del tiempo de cuantum establecido por el planificador y de la cantidad de procesos que se están ejecutando. Si el cuantum es demasiado pequeño, los procesos que requieren mucho tiempo de CPU pueden tardar en completarse y aumentar el tiempo de espera de otros procesos.


## 8. ¿Qué algoritmo puede dar lugar a bloqueos indefinidos?: BLOQUEO POR INANICIÓN, QUE CAIGA POR INANICIÓN

El algoritmo que puede dar lugar a bloqueos indefinidos es el algoritmo de asignación de recursos basado en el protocolo de exclusión mutua, conocido como "Deadlock". Un bloqueo indefinido o "Deadlock" se produce cuando un conjunto de procesos están bloqueados entre sí esperando la liberación de los recursos que necesita cada proceso para continuar su ejecución, pero ninguno de ellos puede liberar los recursos que ya ha obtenido. En el algoritmo de planificación de recursos Deadlock, cada proceso solicita una serie de recursos para llevar a cabo su tarea, y los recursos se asignan a los procesos según su disponibilidad. 

Si un proceso no puede obtener los recursos necesarios para continuar su ejecución, se bloquea y espera a que los recursos se liberen. Si varios procesos se bloquean esperando a que se liberen los recursos que necesita el otro proceso, se produce un bloqueo indefinido o "Deadlock". Este tipo de situación puede ocurrir cuando los procesos no liberan los recursos que han obtenido, o cuando los recursos están asignados a los procesos de manera incorrecta. Para prevenir o resolver el problema del "Deadlock", se pueden utilizar diferentes técnicas, como el algoritmo del banquero, que garantiza la asignación segura de recursos y evita la posibilidad de bloqueos indefinidos.

## 9. Considere un sistema que implementa una planificación por colas multinivel. ¿Qué estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?:

En un sistema que implementa una planificación por colas multinivel, una estrategia que se puede utilizar es aumentar la prioridad de los procesos que han estado esperando en la cola de baja prioridad durante un tiempo prolongado. Esta técnica se conoce como "envejecimiento" o aging en inglés. El envejecimiento se utiliza para garantizar que los procesos que llevan esperando un tiempo prolongado en una cola de baja prioridad tengan la oportunidad de ejecutarse en algún momento. Cuando se utiliza la técnica de envejecimiento, se aumenta gradualmente la prioridad de los procesos que han estado esperando en la cola de baja prioridad durante más tiempo.

De esta manera, se puede asegurar que los procesos que han estado esperando por más tiempo tengan una mayor oportunidad de obtener una porción justa de tiempo de CPU, incluso si se encuentran en una cola de baja prioridad. Al aumentar la prioridad de los procesos que llevan esperando por más tiempo, se evita que los procesos de alta prioridad consuman todo el tiempo de CPU y se garantiza que se utilice la CPU de manera más equilibrada. Es importante tener en cuenta que la técnica de envejecimiento no es la única estrategia que se puede utilizar para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario en un sistema que implementa una planificación por colas multinivel. Otras técnicas, como la prioridad dinámica o el ajuste de los valores de cuantum para cada cola, también pueden ser efectivas en determinadas situaciones.
