# Taller 05
## *Wilmer Steven Farfán Castillo - 2194285*


## 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo:

- **Tareas de I/O**: Si una tarea implica principalmente operaciones de entrada y salida, como leer o escribir en archivos, el uso de múltiples hilos no puede proporcionar una mejora significativa en el rendimiento. Esto debido a que en lugar de esperar a que se completen las tareas, los hilos se bloquean mientras esperan la respuesta de la I/O. En este caso, puede ser más efectivo utilizar un modelo de programación asíncrono o basado en eventos, que permite que el hilo se desbloquee y realice otras tareas mientras espera la respuesta de la I/O.

- **Tareas con dependencias**: Si para la ejecución de una tarea, se requiere que se completen otras, el uso de múltiples hilos no proporciona una mejora en el rendimiento, todo lo contrario, solo puede agregar sobrecarga y aumentar la complejidad del sistema.


## 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario:

Una biblioteca de hilos es una capa de software que corre sobre el nivel de usuario y proporciona un modelo de programación para trabajar con hilos. Para trabajar con múltiples hilos, se suele tomar las siguientes acciones:

- **Interrupción del hilo actual:** Se hace para que la ejecución del hilo se suspenda temporalmente y se pueda cambiar a otro hilo. Este hilo suspendido queda en espera.

- **Selección del siguiente hilo:**Se elige el siguiente hilo de los que se encuentran disponibles, puede ser aleatoria o se puede basar en una política de planificación específica, como Round-Robin o Prioridad.

- **Cambio de contexto:** Se almacena el estado actual del hilo, como los registros del procesador y la memoria, para cambiar al hilo previamente seleccionado.

- **Continuación en la ejecución del hilo:** La biblioteca de hilos continúa la ejecución del hilo seleccionado desde el punto en que se detuvo anteriormente. El hilo seleccionado se convierte en el hilo actual.


## 3. ¿Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?:

Los valores de los registros son componentes del estado del procesador, que es compartido por todos los hilos de un proceso multihilo. Cada hilo tiene su propia pila de ejecución y registros de propósito general, pero los registros de estado del procesador, como el registro de contador de programa (PC), el registro de estado de condición (FLAGS), los registros de punteros de pila, son compartidos por todos los hilos del proceso.

Los valores de los registros son compartidos por todos los hilos y pueden ser accedidos por cualquiera de ellos.Cuando se produce un cambio de contexto entre hilos, la biblioteca de hilos almacena el estado actual del hilo en la memoria y carga el estado del siguiente hilo en el procesador, que incluye los valores de los registros de estado del procesador. Cada hilo tiene su propio contexto de ejecución, teniendo diferentes valores en sus registros de propósito general y su propia pila de ejecución. Por tanto, un hilo puede trabajar con un conjunto de datos diferentes.


## 4. ¿Los cúmulos de memoria, ¿se comparten entre los hilos de un proceso multihilo? ¿Si, no y porqué?:

Los cúmulos de memoria, conocidos como "heaps" son áreas de memoria utilizadas por un proceso, para asignar y liberar memoria durante la ejecución del programa. Los cúmulos de memoria no se comparten directamente entre los hilos de un proceso multihilo. Por ello, cada hilo tiene su propia pila y su espacio en memoria asignado para las variables locales y los datos de la pila. Todos los hilos tienen acceso a la misma zona de memoria compartida, que se utiliza para almacenar datos compartidos. La asignación y liberación de memoria dinámica puede ser un proceso costoso en términos de rendimiento, cuando se trabaja con múltiples hilos que comparten el mismo cúmulo de memoria.


## 5. ¿Las variables globales se comparten entre los hilos de un proceso multihilo? ¿Si, no y porqué?:

Las variables globales se comparten entre los hilos de un proceso multihilo, pueden ocurrir problemas de concurrencia cuando múltiples hilos intentan acceder y modificar el mismo valor de una variable global al mismo tiempo, provocando inconsistencia en los datos. Es importante tomar medidas para garantizar la consistencia y la sincronización de los datos cuando se trabaja con variables globales en un entorno multihilo. Se puede hacer mediante el uso de técnicas de sincronización, como los bloqueos de mutex, semáforos y monitores, para evitar que varios hilos accedan a la misma variable global simultáneamente.

## 6. ¿La memoria de pila se comparten entre los hilos de un proceso multihilo? ¿Si, no y porqué?:

La memoria de pila NO se comparte entre los hilos de un proceso multihilo. Esto debido a que cada hilo tiene su propia pila de llamadas, para almacenar información de contexto y variables locales para cada función que se ejecuta en ese hilo. Los datos almacenados en la pila de un hilo no son visibles para otros hilos y no se pueden compartir directamente.

## 7. ¿En qué ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador?:

1. **Paralelismo de datos:** Cuando se realizan operaciones intensivas en datos, como la manipulación de grandes conjuntos de datos o el procesamiento de imágenes y video, el uso de múltiples hilos mejora significativamente el rendimiento, al dividir el trabajo entre varios hilos y procesarlos en paralelo.

2. **Paralelismo de tareas:** Cuando una tarea puede descomponerse en varias sub-tareas que se pueden ejecutar de forma independiente, el uso de múltiples hilos mejora el rendimiento al permitir que estas sub-tareas se ejecuten en paralelo.

3. **Espera activa:** Cuando un hilo está esperando a que se complete una operación de entrada/salida, el uso de múltiples hilos puede mejorar el rendimiento al permitir que otros hilos sigan ejecutándose mientras el hilo principal espera. Esto se conoce como espera activa y puede reducir el tiempo de inactividad del procesador.


## 8. ¿Puede una solución multihilo que utiliza múltiples hilos de usuario, puede conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?:

Una solución multihilo que utiliza múltiples hilos de usuario, SI consigue un mejor rendimiento en un sistema multiprocesador, que en un sistema monoprocesador. Esto se debe a que en un sistema multiprocesador, los hilos pueden ejecutarse en paralelo en diferentes núcleos de CPU, permitiendo una mayor utilización de los recursos de procesamiento y mayor capacidad de procesamiento.

En un sistema multiprocesador, cada núcleo de CPU puede manejar un hilo independiente, lo que significa que varios hilos pueden ejecutarse simultáneamente en diferentes núcleos de CPU. Esto permite que la solución multihilo divida eficazmente el trabajo entre varios hilos y aproveche al máximo los recursos de procesamiento disponibles. En comparación, en un sistema de un solo procesador, los hilos deben compartir el mismo núcleo de CPU y competir por los mismos recursos de procesamiento, lo que limita el rendimiento de la solución multihilo. 


## 9. Suponga que el número de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores:


Cuando el número de hilos del usuario es mayor que el número de procesadores del sistema y el número de hilos del kernel asignados al programa es menor que el número de procesadores, se puede producir una situación en la que algunos hilos de usuario no puedan ejecutarse en un procesador debido a la falta de hilos del kernel disponibles. En este escenario, algunos hilos de usuario pueden quedar en espera activa, lo que significa que están esperando a que un hilo del kernel esté disponible para asignarles tiempo de procesamiento. Como resultado, el rendimiento del programa se ve afectado negativamente, debido a que algunos hilos de usuario pueden experimentar largos tiempos de espera antes de que se les asigne tiempo de procesamiento en un procesador. Además, la sobrecarga de los recursos del sistema aumentaría, porque los hilos del kernel disponibles deben compartir el tiempo de procesamiento disponible entre los hilos de usuario. Esto puede dar lugar a una mayor latencia entre los hilos de usuario. concurrente avanzadas.
