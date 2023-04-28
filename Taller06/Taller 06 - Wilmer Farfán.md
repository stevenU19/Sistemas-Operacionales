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


## 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Los valores de los registros son componentes del estado del procesador, que es compartido por todos los hilos de un proceso multihilo. Cada hilo tiene su propia pila de ejecución y registros de propósito general, pero los registros de estado del procesador, como el registro de contador de programa (PC), el registro de estado de condición (FLAGS), los registros de punteros de pila (SP y BP), entre otros, son compartidos por todos los hilos del proceso.

Cuando se produce un cambio de contexto entre hilos, la biblioteca de hilos guarda el estado actual del hilo en la memoria y carga el estado del siguiente hilo seleccionado en el procesador, lo que incluye los valores de los registros de estado del procesador. Esto significa que los valores de los registros son compartidos por todos los hilos y pueden ser modificados por cualquiera de ellos.

Es importante tener en cuenta que, aunque los valores de los registros son compartidos entre los hilos, cada hilo tiene su propio contexto de ejecución, lo que significa que cada hilo puede tener diferentes valores en sus registros de propósito general y su propia pila de ejecución. Por lo tanto, es posible que un hilo pueda trabajar con un conjunto de datos diferentes o en una sección diferente del código que otro hilo, aunque estén compartiendo los mismos registros de estado del procesador.

## 3. Los cúmulos de memoria, ¿se comparten entre los hilos de un proceso multihilo? ¿Si, no y porqué?

La configuración de memoria en el proceso multihilo, se puede configurar de distintas maneras. La memoria compartida se utiliza en un proceso multihilo para permitir la comunicación y la transmisión de datos entre sí, además de compartir entre los hilos de un proceso. Si se utiliza memoria compartida, entonces los cúmulos de memoria se comparten entre los hilos de un proceso multihilo. Cada hilo puede acceder y modificar los mismos datos almacenados en la memoria compartida.

Sin embargo, es posible que los procesos multihilo también utilicen una memoria local o privada para cada hilo. En este caso, los cúmulos de memoria no se compartirían entre los hilos. Cada hilo tendría su propio cúmulo de memoria, que no se compartiría con los demás hilos.

La elección de usar memoria compartida o privada depende del diseño de la aplicación y de los requisitos de la misma. Si la aplicación requiere que los hilos compartan datos y se comuniquen entre sí, entonces se debe usar memoria compartida. Por otro lado, si cada hilo trabaja en un conjunto de datos diferentes y no necesita comunicarse con los demás hilos, entonces se debe utilizar memoria privada.
